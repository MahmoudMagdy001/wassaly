import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

class ProfileLogoutButton extends StatelessWidget {
  final VoidCallback onLogoutAllDevices;

  const ProfileLogoutButton({required this.onLogoutAllDevices, super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: AppButton(
          label: context.l10n.profile_logout,
          variant: ButtonVariant.danger,
          isFullWidth: true,
          prefixIcon: Icon(
            Icons.logout,
            size: 20.r,
            color: context.theme.colorScheme.onError,
          ),
          onPressed: () => _showLogoutDialog(context),
        ),
      );

  void _showLogoutDialog(BuildContext context) async {
    final result = await showAppDialog<String>(
      child: _LogoutChoiceDialog(),
    );

    if (!context.mounted) return;

    if (result != null) {
      switch (result) {
        case 'this_device':
          context.read<SessionBloc>().add(const SessionLogoutRequested());
          break;
        case 'all_devices':
          onLogoutAllDevices();
          break;
      }
    }
  }
}

class _LogoutChoiceDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.logout,
              size: 48.r,
              color: cs.error,
            ),
            16.verticalSpace,
            Text(
              context.l10n.profile_logout_title,
              style: tt.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            8.verticalSpace,
            Text(
              context.l10n.profile_logout_choice_message,
              style: tt.bodyMedium?.copyWith(
                color: cs.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            24.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: AppButton(
                label: context.l10n.profile_logout_this_device,
                variant: ButtonVariant.danger,
                onPressed: () => context.pop('this_device'),
              ),
            ),
            12.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: AppButton(
                label: context.l10n.profile_logout_all_devices,
                variant: ButtonVariant.danger,
                onPressed: () => context.pop('all_devices'),
              ),
            ),
            12.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: AppButton(
                label: context.l10n.shared_cancel,
                variant: ButtonVariant.secondary,
                onPressed: () => context.pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
