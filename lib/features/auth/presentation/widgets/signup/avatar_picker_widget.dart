import 'package:wassaly/core/imports/imports.dart';

class AvatarPickerWidget extends StatelessWidget {
  final File? avatarFile;
  final VoidCallback onAvatarCleared;
  final void Function(File) onAvatarSelected;

  const AvatarPickerWidget({
    super.key,
    this.avatarFile,
    required this.onAvatarCleared,
    required this.onAvatarSelected,
  });

  Future<void> _pickImage(BuildContext context, ImageSource source) async {
    final result = await MediaService.instance.pickImage(source: source);

    result.fold(
      (failure) {
        context.showTypedSnackBar(failure.message, type: SnackBarType.error);
      },
      (file) {
        if (file != null) {
          onAvatarSelected(file);
        }
      },
    );
  }

  Future<void> _showImageSourceDialog(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return context.showAppBottomSheet<void>(
      builder: (_) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.auth_select_image_source,
                style: tt.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: cs.primary,
                ),
              ),
              20.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: _SourceButton(
                      icon: Icons.camera_alt_outlined,
                      label: context.l10n.auth_camera,
                      onTap: () {
                        context.pop();
                        _pickImage(context, ImageSource.camera);
                      },
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: _SourceButton(
                      icon: Icons.photo_library_outlined,
                      label: context.l10n.auth_gallery,
                      onTap: () {
                        context.pop();
                        _pickImage(context, ImageSource.gallery);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 100.w,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Main avatar with tap for selecting
              GestureDetector(
                onTap: () => _showImageSourceDialog(context),
                child: Container(
                  width: 100.w,
                  height: 100.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cs.surfaceContainerHighest,
                    border: Border.all(
                      color: cs.primary.withValues(alpha: 0.2),
                      width: 2,
                    ),
                    image: avatarFile != null
                        ? DecorationImage(
                            image: FileImage(avatarFile!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: avatarFile == null
                      ? AppIcon(
                          materialIcon: Icons.person_outline,
                          size: 40.sp,
                          color: cs.primary.withValues(alpha: 0.5),
                        )
                      : null,
                ),
              ),
              // Edit button
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () => _showImageSourceDialog(context),
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
                    child: AppIcon(
                      materialIcon: avatarFile == null ? Icons.add : Icons.edit,
                      size: 16.sp,
                      color: cs.onPrimary,
                    ),
                  ),
                ),
              ),
              // Remove button - separate from main avatar tap
              if (avatarFile != null)
                Positioned(
                  top: -4.w,
                  right: -4.w,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        onAvatarCleared();
                      },
                      customBorder: const CircleBorder(),
                      child: Container(
                        width: 32.w,
                        height: 32.w,
                        decoration: BoxDecoration(
                          color: cs.error,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: cs.surface,
                            width: 2,
                          ),
                        ),
                        child: AppIcon(
                          materialIcon: Icons.close,
                          size: 16.sp,
                          color: cs.onError,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        8.verticalSpace,
        Text(
          avatarFile == null
              ? context.l10n.auth_add_avatar
              : context.l10n.auth_change_avatar,
          style: tt.bodySmall?.copyWith(
            color: cs.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _SourceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SourceButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: cs.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            AppIcon(
              materialIcon: icon,
              size: 32.sp,
              color: cs.primary,
            ),
            8.verticalSpace,
            Text(
              label,
              style: tt.bodyMedium?.copyWith(
                color: cs.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
