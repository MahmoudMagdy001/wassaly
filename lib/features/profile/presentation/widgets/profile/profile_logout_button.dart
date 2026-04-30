import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

class ProfileLogoutButton extends StatelessWidget {
  const ProfileLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
      child: AppButton(
        label: 'profile.logout'.tr(),
        variant: ButtonVariant.danger,
        isFullWidth: true,
        prefixIcon: Icon(Icons.logout,
            size: 20.r, color: context.theme.colorScheme.onError),
        onPressed: () => _showLogoutDialog(context),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) async {
    final confirmed = await context.showConfirmationDialog(
      title: 'profile.logout_title'.tr(),
      message: 'profile.logout_message'.tr(),
      confirmText: 'profile.logout'.tr(),
      cancelText: 'shared.cancel'.tr(),
      isDangerous: true,
    );

    if (confirmed ?? false) {
      context.read<SessionBloc>().add(const SessionLogoutRequested());
    }
  }
}
