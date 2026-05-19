import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

import '../../../../auth/domain/entities/user_entity.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserEntity?>(
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
                    child: user?.avatarUrl != null
                        ? CommonImage(
                            imageUrl: user!.avatarUrl!,
                            width: 100,
                            height: 100,
                            memCacheHeight: 100 * 3,
                            fit: BoxFit.cover,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(999)),
                            enableFullScreenView: true,
                            heroTag: 'profile_avatar',
                          )
                        : Icon(
                            Icons.person,
                            size: 50.r,
                            color: cs.primary,
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
}
