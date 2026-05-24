
import 'package:wassaly/core/imports/imports.dart';

/// Shows a highly customizable bottom sheet with premium features like backdrop blur.
///
/// This helper uses the [rootNavigatorKey] to display the sheet
/// without needing a local [BuildContext].
Future<T?> showAppSheet<T>({
  required Widget child,
  bool hasBlur = true,
  bool enableDrag = true,
  bool isScrollControlled = true,
  bool useSafeArea = true,
}) {
  final context = rootContext;
  if (context == null) return Future.value(null);

  return context.showAppBottomSheet<T>(
    builder: (_) => child,
    isScrollControlled: isScrollControlled,
    useSafeArea: useSafeArea,
    hasBlur: hasBlur,
    enableDrag: enableDrag,
  );
}
