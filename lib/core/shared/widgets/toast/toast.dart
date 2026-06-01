import 'package:wassaly/core/imports/imports.dart';

/// Enum for toast positions.
enum ToastPosition { top, bottom }

/// The gap between stack of cards.
int gapBetweenCard = 15;

/// Calculate position of old cards based on current position.
double calculatePosition(List<ToastBar> toastBars, ToastBar self) {
  if (toastBars.isNotEmpty && self != toastBars.last) {
    final box = self.info.key.currentContext?.findRenderObject() as RenderBox?;
    if (box != null) {
      return gapBetweenCard * (toastBars.length - toastBars.indexOf(self) - 1);
    }
  }
  return 0;
}

/// Rescale the old cards based on its position.
double calculateScaleFactor(List<ToastBar> toastBars, ToastBar current) {
  final int index = toastBars.indexOf(current);
  final int indexValFromLast = toastBars.length - 1 - index;
  final double factor = indexValFromLast / 25;
  final double res = 0.97 - factor;
  return res < 0 ? 0 : res;
}

List<ToastBar> _toastBars = [];

/// Toast core class.
class ToastBar {
  /// Duration of toast when autoDismiss is true.
  final Duration toastDuration;

  /// Position of toast.
  final ToastPosition position;

  /// Set true to dismiss toast automatically based on toastDuration.
  final bool autoDismiss;

  /// Pass the widget inside builder context.
  final WidgetBuilder builder;

  /// Duration of animated transitions.
  final Duration animationDuration;

  /// Animation Curve.
  final Curve? animationCurve;

  /// Info on each toast.
  late SnackBarInfo info;

  /// Initialise ToastBar with required parameters.
  ToastBar({
    this.toastDuration = const Duration(milliseconds: 5000),
    this.position = ToastPosition.bottom,
    required this.builder,
    this.animationDuration = const Duration(milliseconds: 700),
    this.autoDismiss = false,
    this.animationCurve,
  }) : assert(
          toastDuration.inMilliseconds > animationDuration.inMilliseconds,
        );

  /// Remove individual toastBars on dismiss.
  void remove() {
    try {
      info.entry.remove();
    } catch (_) {
      // Entry may have already been removed (e.g. after a navigator pop).
    }
    _toastBars.removeWhere((element) => element == this);
    // Prune any other stale entries whose state has been disposed.
    _toastBars = _toastBars.clean();
  }

  /// Push the toast in current context.
  void show(BuildContext context) {
    // Prune stale toasts (disposed after navigator pops / modal closes) BEFORE
    // inserting. This is the primary guard against the
    // `!keyReservation.contains(key)` assertion on iOS, which occurs when a
    // GlobalKey from a dead AnimatedPositioned is still considered "reserved".
    _toastBars = _toastBars.clean();

    // Build an OverlayEntry with a brand-new GlobalKey each time.
    OverlayEntry buildEntry(GlobalKey<RawToastState> key) => OverlayEntry(
          builder: (_) => RawToast(
            key: key,
            animationDuration: animationDuration,
            toastPosition: position,
            animationCurve: animationCurve,
            autoDismiss: autoDismiss,
            getPosition: () => calculatePosition(_toastBars, this),
            getscaleFactor: () => calculateScaleFactor(_toastBars, this),
            snackbarDuration: toastDuration,
            onRemove: remove,
            child: builder.call(context),
          ),
        );

    // Attempt insertion, retrying with a freshly generated GlobalKey if the
    // Navigator complains about key reservation. This avoids a hard crash in
    // rare races where the same GlobalKey is observed as already reserved.
    // Also fetch fresh overlay state on each attempt to handle stale overlays.
    const maxAttempts = 3;
    for (var attempt = 0; attempt < maxAttempts; attempt++) {
      try {
        // Resolve the best overlay: prefer the root navigator overlay so that
        // toasts shown from inside a modal are still inserted at the root level
        // (avoids stale-overlay issues when the modal is dismissed).
        final rootCtx = rootContext;
        OverlayState? overlayState;
        if (rootCtx != null && rootCtx.mounted) {
          overlayState = Navigator.maybeOf(rootCtx)?.overlay;
        }
        // Fall back to the provided context's navigator overlay.
        if (overlayState == null && context.mounted) {
          overlayState = Navigator.maybeOf(context)?.overlay;
        }
        if (overlayState == null) return; // No overlay available; skip toast.

        final key = GlobalKey<RawToastState>();
        info = SnackBarInfo(key: key, createdAt: DateTime.now());
        info.entry = buildEntry(info.key);

        _toastBars.add(this);
        overlayState.insert(info.entry);
        break;
      } catch (e) {
        // Clean up this entry and prune stale ones before retrying.
        _toastBars.removeWhere((element) => element == this);
        _toastBars = _toastBars.clean();
        if (attempt == maxAttempts - 1) rethrow;
        // Otherwise, try again with a fresh overlay and new key.
      }
    }
  }

  /// Remove all the toasts in the context.
  static void removeAll() {
    for (int i = 0; i < _toastBars.length; i++) {
      _toastBars[i].info.entry.remove();
    }
    _toastBars.removeWhere((element) => true);
  }
}

/// Snackbar info class.
class SnackBarInfo {
  late final OverlayEntry entry;
  final GlobalKey<RawToastState> key;
  final DateTime createdAt;

  SnackBarInfo({
    required this.key,
    required this.createdAt,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnackBarInfo &&
        other.entry == entry &&
        other.key == key &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode => entry.hashCode ^ key.hashCode ^ createdAt.hashCode;
}

/// Get all the toastBars which are currently on context.
extension Cleaner on List<ToastBar> {
  /// Clean function to iterate over toastBars which are in context.
  List<ToastBar> clean() {
    return where(
      (element) => element.info.key.currentState != null,
    ).toList();
  }
}
