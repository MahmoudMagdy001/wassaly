import 'package:wassaly/core/imports/imports.dart';
import 'dart:ui';

/// A premium, immersive full-screen image viewer supporting multiple images.
/// Supports swiping between images, pinch-to-zoom, pan, double-tap-to-zoom, and vertical swipe to dismiss.
class AppImageFullScreenView extends StatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;
  final String Function(int index) heroTagBuilder;

  const AppImageFullScreenView({
    super.key,
    required this.imageUrls,
    required this.initialIndex,
    required this.heroTagBuilder,
  });

  /// Displays the full-screen viewer overlaying the current screen.
  static Future<int?> show(
    BuildContext context, {
    required List<String> imageUrls,
    int initialIndex = 0,
    required String Function(int index) heroTagBuilder,
  }) {
    return Navigator.of(context).push<int>(
      PageRouteBuilder<int>(
        opaque: false,
        barrierDismissible: true,
        barrierColor: Colors.black.withValues(alpha: 0.8),
        pageBuilder: (context, _, __) => AppImageFullScreenView(
          imageUrls: imageUrls,
          initialIndex: initialIndex,
          heroTagBuilder: heroTagBuilder,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  State<AppImageFullScreenView> createState() => _AppImageFullScreenViewState();
}

class _AppImageFullScreenViewState extends State<AppImageFullScreenView> {
  late final PageController _pageController;
  late final ValueNotifier<int> _currentIndexNotifier;
  bool _canScroll = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    _currentIndexNotifier = ValueNotifier<int>(widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Blurred backdrop to match rich premium aesthetics
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(
                color: Colors.black.withValues(alpha: 0.65),
              ),
            ),
          ),

          // Image PageView with Swipe-to-Dismiss (Dismissible)
          Positioned.fill(
            child: SafeArea(
              child: Dismissible(
                key: const Key('full_screen_image_dismissible'),
                direction: DismissDirection.vertical,
                onDismissed: (_) =>
                    Navigator.of(context).pop(_currentIndexNotifier.value),
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.imageUrls.length,
                  physics: _canScroll
                      ? const BouncingScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    _currentIndexNotifier.value = index;
                  },
                  itemBuilder: (context, index) {
                    final imageUrl = widget.imageUrls[index];
                    final heroTag = widget.heroTagBuilder(index);

                    return _FullScreenImagePage(
                      imageUrl: imageUrl,
                      heroTag: heroTag,
                      onScaleChanged: (scale) {
                        if (mounted) {
                          setState(() {
                            _canScroll = scale <= 1.0;
                          });
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ),

          // Floating Top Bar with Page Indicator & Close Button
          Positioned(
            top: 20.h,
            left: 20.w,
            right: 20.w,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (widget.imageUrls.length > 1)
                    ValueListenableBuilder<int>(
                      valueListenable: _currentIndexNotifier,
                      builder: (context, currentIndex, _) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Text(
                            '${currentIndex + 1} / ${widget.imageUrls.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    ),

                  // Close Button
                  ClipOval(
                    child: Material(
                      color: Colors.black.withValues(alpha: 0.5),
                      child: InkWell(
                        onTap: () => Navigator.of(context)
                            .pop(_currentIndexNotifier.value),
                        child: Padding(
                          padding: EdgeInsets.all(10.r),
                          child: const Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FullScreenImagePage extends StatefulWidget {
  final String imageUrl;
  final String heroTag;
  final ValueChanged<double> onScaleChanged;

  const _FullScreenImagePage({
    required this.imageUrl,
    required this.heroTag,
    required this.onScaleChanged,
  });

  @override
  State<_FullScreenImagePage> createState() => _FullScreenImagePageState();
}

class _FullScreenImagePageState extends State<_FullScreenImagePage> {
  final TransformationController _transformationController =
      TransformationController();
  late TapDownDetails _doubleTapDetails;

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
      widget.onScaleChanged(1);
    } else {
      final position = _doubleTapDetails.localPosition;
      // ignore: deprecated_member_use
      _transformationController.value = Matrix4.identity()
        // ignore: deprecated_member_use
        ..translate(-position.dx * 1.5, -position.dy * 1.5)
        // ignore: deprecated_member_use
        ..scale(2.5);
      widget.onScaleChanged(2.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: widget.heroTag,
        child: GestureDetector(
          onDoubleTapDown: (details) => _doubleTapDetails = details,
          onDoubleTap: _handleDoubleTap,
          child: InteractiveViewer(
            transformationController: _transformationController,
            minScale: 1,
            maxScale: 4,
            onInteractionUpdate: (details) {
              final scale = _transformationController.value.getMaxScaleOnAxis();
              widget.onScaleChanged(scale);
            },
            onInteractionEnd: (details) {
              final scale = _transformationController.value.getMaxScaleOnAxis();
              widget.onScaleChanged(scale);
            },
            child: CommonImage(
              imageUrl: widget.imageUrl,
              fit: BoxFit.contain,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
