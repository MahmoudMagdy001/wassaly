import 'package:wassaly/core/imports/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home.home_title'.tr(),
          style: context.typography.titleLarge,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 80.r,
              color: context.theme.colorScheme.primary,
            ),
            20.verticalSpace,
            Text(
              'home.home_title'.tr(),
              style: context.typography.headlineMedium,
            ),
            10.verticalSpace,
            Text(
              'home.home_subtitle'.tr(),
              style: context.typography.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
