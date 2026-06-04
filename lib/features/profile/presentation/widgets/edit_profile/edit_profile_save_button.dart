import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class EditProfileSaveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const EditProfileSaveButton({
    required this.onPressed, super.key,
  });

  @override
  Widget build(BuildContext context) => BlocSelector<ProfileBloc, ProfileState, bool>(
      selector: (state) => state.actionStatus.isLoading,
      builder: (context, isLoading) => AppButton(
          label: context.l10n.profile_save_changes,
          isFullWidth: true,
          isLoading: isLoading,
          onPressed: onPressed,
        ),
    );
}
