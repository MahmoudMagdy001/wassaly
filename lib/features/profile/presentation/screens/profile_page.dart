import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/injection/injection.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileBloc>()..add(const ProfileFetched()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (prev, curr) =>
            prev.actionStatus != curr.actionStatus && curr.actionStatus.isDone,
        listener: (context, state) {
          if (state.actionStatus.isSuccess) {
            if (state.user == null) {
              context.go(AppRoutes.login);
            } else {
              context.showSuccessSnackBar('profile.action_success'.tr());
            }
          } else if (state.actionStatus.isFailure &&
              state.actionError != null) {
            context.showErrorSnackBar(state.actionError!);
          }
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _buildAppBar(context),
                  16.verticalSpace,
                  _buildProfileHeader(context),
                  16.verticalSpace,
                  _buildStatsCard(context),
                  16.verticalSpace,
                  _buildSettingsSection(context),
                  16.verticalSpace,
                  _buildSupportSection(context),
                  16.verticalSpace,
                  _buildLogoutButton(context),
                  32.verticalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.paddingOf(context).top + 16.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => context.push(AppRoutes.editProfile),
            icon: Icon(Icons.edit_outlined, color: cs.primary),
            style: IconButton.styleFrom(
              backgroundColor: cs.primaryContainer.withValues(alpha: 0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
          Text(
            'profile.my_account'.tr(),
            style: tt.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (prev, curr) => prev.user != curr.user,
      builder: (context, state) {
        final user = state.user;

        return Column(
          children: [
            // Avatar with edit badge
            Stack(
              children: [
                Hero(
                  tag: 'profile_avatar',
                  child: Container(
                    width: 100.w,
                    height: 100.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: cs.surface,
                      border: Border.all(
                        color: cs.primary,
                        width: 3,
                      ),
                    ),
                    child: ClipOval(
                      child: user?.avatarUrl != null
                          ? CachedNetworkImage(
                              imageUrl: user!.avatarUrl!,
                              fit: BoxFit.cover,
                              placeholder: (_, __) => const AppLoading(),
                              errorWidget: (_, __, ___) => Icon(
                                Icons.person,
                                size: 50.r,
                                color: cs.primary,
                              ),
                            )
                          : Icon(
                              Icons.person,
                              size: 50.r,
                              color: cs.primary,
                            ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 32.w,
                    height: 32.w,
                    decoration: BoxDecoration(
                      color: cs.primary,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: cs.surface,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 16.r,
                      color: cs.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            if (user != null) ...[
              Text(
                user.name ?? user.email,
                style: tt.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              4.verticalSpace,
              Text(
                user.phone ?? user.email,
                style: tt.bodyMedium?.copyWith(
                  color: cs.onSurfaceVariant,
                ),
              ),
            ] else ...[
              SizedBox(
                width: 150.w,
                height: 24.h,
                child: Skeletonizer(
                  child: Container(
                    decoration: BoxDecoration(
                      color: cs.surface,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
              ),
              8.verticalSpace,
              SizedBox(
                width: 180.w,
                height: 16.h,
                child: Skeletonizer(
                  child: Container(
                    decoration: BoxDecoration(
                      color: cs.surface,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _buildStatsCard(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: cs.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.5)),
        ),
        child: Row(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: cs.primaryContainer.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                Icons.inventory_2_outlined,
                color: cs.primary,
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'profile.my_orders'.tr(),
                    style: tt.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'profile.orders_count'.tr(args: ['12']),
                    style: tt.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_left,
              color: cs.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsSection(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w, bottom: 12.h),
            child: Text(
              'profile.general_settings'.tr(),
              style: tt.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: cs.surface,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: cs.shadow.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildMenuTile(
                  context,
                  icon: Icons.location_on_outlined,
                  title: 'profile.saved_addresses'.tr(),
                  onTap: () => context.push(AppRoutes.addresses),
                ),
                Divider(height: 1, indent: 56.w, endIndent: 16.w),
                _buildMenuTile(
                  context,
                  icon: Icons.credit_card_outlined,
                  title: 'profile.payment_methods'.tr(),
                  onTap: () {},
                ),
                Divider(height: 1, indent: 56.w, endIndent: 16.w),
                BlocBuilder<SettingsBloc, SettingsState>(
                  buildWhen: (prev, curr) => prev.language != curr.language,
                  builder: (context, state) {
                    return _buildMenuTile(
                      context,
                      icon: Icons.language_outlined,
                      title: 'profile.language'.tr(),
                      subtitle: state.language == 'ar'
                          ? 'profile.arabic'.tr()
                          : 'profile.english'.tr(),
                      onTap: () => context.push(AppRoutes.language),
                    );
                  },
                ),
                Divider(height: 1, indent: 56.w, endIndent: 16.w),
                BlocBuilder<SettingsBloc, SettingsState>(
                  buildWhen: (prev, curr) =>
                      prev.isDarkMode != curr.isDarkMode ||
                      prev.language != curr.language,
                  builder: (context, state) {
                    return _buildMenuTile(
                      context,
                      icon: state.isDarkMode
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      title: 'profile.theme'.tr(),
                      subtitle: state.isDarkMode
                          ? 'profile.dark'.tr()
                          : 'profile.light'.tr(),
                      trailing: Switch.adaptive(
                        value: state.isDarkMode,
                        onChanged: (_) {
                          context
                              .read<SettingsBloc>()
                              .add(const ThemeToggled());
                        },
                        activeThumbColor: cs.primary,
                        activeTrackColor: cs.primaryContainer,
                      ),
                      onTap: null,
                    );
                  },
                ),
                Divider(height: 1, indent: 56.w, endIndent: 16.w),
                _buildMenuTile(
                  context,
                  icon: Icons.notifications_outlined,
                  title: 'profile.notifications'.tr(),
                  trailing: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: cs.tertiaryContainer,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text(
                      'profile.active'.tr(),
                      style: tt.bodySmall?.copyWith(
                        color: cs.onTertiaryContainer,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: cs.primaryContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(
                icon,
                size: 20.r,
                color: cs.primary,
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: tt.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null) ...[
                    2.verticalSpace,
                    Text(
                      subtitle,
                      style: tt.bodySmall?.copyWith(
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            trailing ??
                Icon(
                  Icons.chevron_left,
                  size: 20.r,
                  color: cs.onSurfaceVariant,
                ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportSection(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w, bottom: 12.h),
            child: Text(
              'profile.support_and_privacy'.tr(),
              style: tt.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: cs.surface,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: cs.shadow.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildMenuTile(
                  context,
                  icon: Icons.help_outline,
                  title: 'profile.help_center'.tr(),
                  onTap: () {},
                ),
                Divider(height: 1, indent: 56.w, endIndent: 16.w),
                _buildMenuTile(
                  context,
                  icon: Icons.privacy_tip_outlined,
                  title: 'profile.privacy_policy'.tr(),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: InkWell(
        onTap: () => _showLogoutDialog(context),
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: BoxDecoration(
            color: cs.errorContainer.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.logout,
                color: cs.error,
                size: 20.r,
              ),
              8.horizontalSpace,
              Text(
                'profile.logout'.tr(),
                style: tt.titleSmall?.copyWith(
                  color: cs.error,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    final cs = context.theme.colorScheme;

    context.showAppDialog<void>(
      builder: (dialogContext) => AlertDialog.adaptive(
        title: Text('profile.logout_title'.tr()),
        content: Text('profile.logout_message'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text('shared.cancel'.tr()),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.read<SessionBloc>().add(const SessionLogoutRequested());
            },
            child: Text(
              'profile.logout'.tr(),
              style: TextStyle(color: cs.error),
            ),
          ),
        ],
      ),
    );
  }
}
