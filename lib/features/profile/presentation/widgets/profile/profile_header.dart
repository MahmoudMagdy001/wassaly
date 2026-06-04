import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) => BlocSelector<ProfileBloc, ProfileState, UserEntity?>(
      selector: (state) => state.user,
      builder: (context, user) {
        final cs = context.theme.colorScheme;
        final tt = context.theme.textTheme;

        return Column(
          children: [
            Stack(
              children: [
                Container(
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
                    child: Builder(builder: (context) {
                      // Compute initials from name or email
                      String? initials;
                      final name = (user?.name ?? '').trim();
                      if (name.isNotEmpty) {
                        final parts = name.split(RegExp(r'\s+'));
                        if (parts.length >= 2) {
                          initials =
                              '${parts[0][0]}${parts[1][0]}'.toUpperCase();
                        } else if (parts[0].length >= 2) {
                          initials = parts[0].substring(0, 2).toUpperCase();
                        } else {
                          initials = parts[0][0].toUpperCase();
                        }
                      } else if ((user?.email ?? '').isNotEmpty) {
                        final local = user!.email.split('@').first;
                        if (local.length >= 2) {
                          initials = local.substring(0, 2).toUpperCase();
                        } else if (local.isNotEmpty) {
                          initials = local[0].toUpperCase();
                        }
                      }

                      if (user?.avatarUrl != null &&
                          user!.avatarUrl!.isNotEmpty) {
                        return CommonImage(
                          imageUrl: user.avatarUrl!,
                          width: 100,
                          height: 100,
                          memCacheHeight: 100 * 3,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(999)),
                          enableFullScreenView: true,
                          heroTag: 'profile_avatar',
                        );
                      }

                      if (initials != null && initials.isNotEmpty) {
                        return Container(
                          color: cs.surface,
                          alignment: Alignment.center,
                          child: Text(
                            initials,
                            style: context.textTheme.headlineSmall?.copyWith(
                              color: cs.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }

                      return Icon(
                        Icons.person,
                        size: 50.r,
                        color: cs.primary,
                      );
                    },),
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
                user.email,
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
