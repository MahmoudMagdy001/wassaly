import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class EditProfileAvatarPicker extends StatefulWidget {
  final File? avatarFile;
  final ValueChanged<File?> onAvatarPicked;

  const EditProfileAvatarPicker({
    super.key,
    required this.avatarFile,
    required this.onAvatarPicked,
  });

  @override
  State<EditProfileAvatarPicker> createState() =>
      _EditProfileAvatarPickerState();
}

class _EditProfileAvatarPickerState extends State<EditProfileAvatarPicker> {
  Future<void> _pickAvatar() async {
    final result = await MediaService.instance.pickImage(
      source: ImageSource.gallery,
    );
    result.fold(
      (failure) => context.showErrorSnackBar(failure.message),
      (file) => widget.onAvatarPicked(file),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Center(
      child: Stack(
        children: [
          Container(
            width: 120.w,
            height: 120.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: cs.surfaceContainerHighest,
              border: Border.all(color: cs.primary, width: 2),
            ),
            child: ClipOval(
              child: widget.avatarFile != null
                  ? Image.file(widget.avatarFile!, fit: BoxFit.cover)
                  : BlocBuilder<ProfileBloc, ProfileState>(
                      buildWhen: (prev, curr) => prev.user != curr.user,
                      builder: (context, state) {
                        final user = state.user;
                        if (user?.avatarUrl != null) {
                          return AppCachedImage(
                            imageUrl: user!.avatarUrl!,
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(999)),
                          );
                        }
                        return Icon(Icons.person,
                            size: 50.r, color: cs.primary);
                      },
                    ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 18.r,
              backgroundColor: cs.primary,
              child: IconButton(
                onPressed: _pickAvatar,
                icon: Icon(Icons.camera_alt_outlined,
                    size: 16.r, color: cs.onPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
