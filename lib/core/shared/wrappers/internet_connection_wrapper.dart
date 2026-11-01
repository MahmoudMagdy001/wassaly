import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassaly/core/extensions/context_extension.dart';
import 'package:wassaly/core/injection/injection.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

/// Wraps app content with an animated slim banner notifying the user
/// about real network status changes (disconnected, unstable, restored).
class InternetConnectionWrapper extends StatefulWidget {
  final Widget child;
  final IInternetConnectionService? service;

  const InternetConnectionWrapper({
    required this.child,
    this.service,
    super.key,
  });

  @override
  State<InternetConnectionWrapper> createState() =>
      _InternetConnectionWrapperState();
}

class _InternetConnectionWrapperState extends State<InternetConnectionWrapper> {
  late final IInternetConnectionService _service;
  StreamSubscription<NetworkState>? _stateSub;

  NetworkState _state = NetworkState.checking;
  NetworkIssue _lastIssue = NetworkIssue.none;
  bool _showBanner = false;
  bool _isRestored = false;
  Timer? _hideTimer;

  @override
  void initState() {
    super.initState();
    _service = widget.service ?? sl<InternetConnectionService>();
    _state = _service.currentState;
    _lastIssue = _service.lastIssue;

    if (_state == NetworkState.disconnected ||
        _state == NetworkState.unstable) {
      _showBanner = true;
    }

    _stateSub = _service.stateStream.listen(_onStateChanged);
  }

  void _onStateChanged(NetworkState newState) {
    if (!mounted) return;
    _hideTimer?.cancel();
    _hideTimer = null;

    final wasDisconnected = _state == NetworkState.disconnected;
    final currentIssue = _service.lastIssue;

    setState(() {
      _state = newState;
      _lastIssue = currentIssue;

      if (newState == NetworkState.disconnected ||
          newState == NetworkState.unstable) {
        _showBanner = true;
        _isRestored = false;
      } else if (newState == NetworkState.connected) {
        if (wasDisconnected) {
          _showBanner = true;
          _isRestored = true;
        } else {
          _showBanner = false;
          _isRestored = false;
        }
      } else {
        _showBanner = false;
        _isRestored = false;
      }
    });

    if (newState == NetworkState.connected && _isRestored) {
      _hideTimer = Timer(const Duration(milliseconds: 1800), () {
        if (mounted) {
          setState(() {
            _showBanner = false;
            _isRestored = false;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    unawaited(_stateSub?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: _showBanner
                ? _NetworkBanner(
                    state: _state,
                    issue: _lastIssue,
                    isRestored: _isRestored,
                    onTap: () => unawaited(_service.checkNow()),
                  )
                : const SizedBox.shrink(),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: _showBanner,
              child: widget.child,
            ),
          ),
        ],
      );
}

class _NetworkBanner extends StatelessWidget {
  final NetworkState state;
  final NetworkIssue issue;
  final bool isRestored;
  final VoidCallback onTap;

  const _NetworkBanner({
    required this.state,
    required this.issue,
    required this.isRestored,
    required this.onTap,
  });

  (Color, Color, IconData, String) _bannerDetails(BuildContext context) {
    if (isRestored && state == NetworkState.connected) {
      return (
        context.appColors.success,
        context.appColors.onSuccess,
        Icons.check_circle_outline_rounded,
        context.l10n.network_banner_restored,
      );
    }

    if (state == NetworkState.unstable) {
      return (
        context.appColors.warning,
        context.appColors.onWarning,
        Icons.network_check_rounded,
        context.l10n.network_banner_unstable,
      );
    }

    // ponytail: calm orange distinguishes "connected to network but no internet / check quota"
    // from complete disconnection (error/red) and normal connection (success/green).
    if (issue == NetworkIssue.noInternet ||
        issue == NetworkIssue.captivePortal) {
      final message = issue == NetworkIssue.noInternet
          ? context.l10n.network_banner_no_internet
          : context.l10n.network_banner_captive_portal;

      return (
        context.appColors.softOrange,
        context.appColors.onSoftOrange,
        Icons.wifi_off_rounded,
        message,
      );
    }

    return (
      context.colors.error,
      context.colors.onError,
      Icons.wifi_off_rounded,
      context.l10n.network_banner_no_interface,
    );
  }

  @override
  Widget build(BuildContext context) {
    final (bgColor, fgColor, icon, text) = _bannerDetails(context);

    return Semantics(
      liveRegion: true,
      child: Material(
        color: bgColor,
        child: InkWell(
          onTap: onTap,
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: fgColor, size: 20.r),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          (context.typography.labelLarge ?? const TextStyle())
                              .copyWith(
                        color: fgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
