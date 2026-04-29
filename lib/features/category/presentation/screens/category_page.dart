import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'category.category_title'.tr(),
          style: context.typography.titleLarge,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.category_outlined,
              size: 80.r,
              color: context.theme.colorScheme.primary,
            ),
            20.verticalSpace,
            Text(
              'category.category_title'.tr(),
              style: context.typography.headlineMedium,
            ),
            10.verticalSpace,
            Text(
              'category.category_subtitle'.tr(),
              style: context.typography.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
