import 'package:wassaly/core/imports/imports.dart';

/// A wrapper to initialize [ScreenUtil] with design-specific constraints.
class ScreenUtilWrapper extends StatelessWidget {
  final Widget Function(BuildContext context) builder;
  final Size designSize;
  final bool minTextAdapt;
  final bool splitScreenMode;

  const ScreenUtilWrapper({
    super.key,
    required this.builder,
    this.designSize = const Size(360, 690),
    this.minTextAdapt = true,
    this.splitScreenMode = true,
  });

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: minTextAdapt,
      splitScreenMode: splitScreenMode,
      builder: (context, _) => builder(context),
    );
}
