import 'package:wassaly/core/imports/imports.dart';

class HomeNavigationService {
  ScrollController? _scrollController;
  GlobalKey<RefreshIndicatorState>? _refreshKey;

  set scrollController(ScrollController? controller) {
    _scrollController = controller;
  }

  set refreshKey(GlobalKey<RefreshIndicatorState>? key) {
    _refreshKey = key;
  }

  Future<void> scrollToTopOrRefresh() async {
    final controller = _scrollController;
    if (controller != null && controller.hasClients) {
      if (controller.offset > 10) {
        await controller.animateTo(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutCubic,
        );
      } else {
        _refreshKey?.currentState?.show();
      }
    } else {
      _refreshKey?.currentState?.show();
    }
  }
}
