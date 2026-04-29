import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/injection/injection.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileBloc>(),
      child: const _EditProfileView(),
    );
  }
}

class _EditProfileView extends StatefulWidget {
  const _EditProfileView();

  @override
  State<_EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<_EditProfileView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _currentPasswordController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordConfirmationController;

  File? _avatarFile;
  bool _obscureCurrentPassword = true;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void initState() {
    super.initState();
    final user = context.read<ProfileBloc>().state.user;
    _nameController = TextEditingController(text: user?.name ?? '');
    _phoneController = TextEditingController(text: user?.phone ?? '');
    _currentPasswordController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmationController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _currentPasswordController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
    super.dispose();
  }

  Future<void> _pickAvatar() async {
    final result = await MediaService.instance.pickImage(
      source: ImageSource.gallery,
    );
    result.fold(
      (failure) => context.showErrorSnackBar(failure.message),
      (file) {
        if (file != null) {
          setState(() {
            _avatarFile = file;
          });
        }
      },
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final password = _passwordController.text.trim();
    if (password.isNotEmpty && _currentPasswordController.text.isEmpty) {
      context.showErrorSnackBar('profile.current_password_required'.tr());
      return;
    }

    context.read<ProfileBloc>().add(ProfileUpdated(
          fullName: _nameController.text.trim(),
          phone: _phoneController.text.trim(),
          avatar: _avatarFile,
          password: password.isNotEmpty ? password : null,
          currentPassword: _currentPasswordController.text.trim().isNotEmpty
              ? _currentPasswordController.text.trim()
              : null,
          passwordConfirmation:
              _passwordConfirmationController.text.trim().isNotEmpty
                  ? _passwordConfirmationController.text.trim()
                  : null,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final tt = context.theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('profile.edit_profile'.tr()),
        centerTitle: true,
      ),
      body: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (prev, curr) =>
            prev.actionStatus != curr.actionStatus && curr.actionStatus.isDone,
        listener: (context, state) {
          if (state.actionStatus.isSuccess) {
            context.showSuccessSnackBar('profile.update_success'.tr());
            context.pop();
          } else if (state.actionStatus.isFailure &&
              state.actionError != null) {
            context.showErrorSnackBar(state.actionError!);
          }
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildAvatarSection(context),
                24.verticalSpace,
                AppTextField(
                  label: 'auth.name'.tr(),
                  hint: 'auth.name_placeholder'.tr(),
                  controller: _nameController,
                  prefixIcon: const Icon(Icons.person_outline),
                  validator: (v) =>
                      v!.isEmpty ? 'auth.name_required'.tr() : null,
                ),
                16.verticalSpace,
                AppTextField(
                  label: 'auth.phone'.tr(),
                  hint: 'auth.phone'.tr(),
                  controller: _phoneController,
                  prefixIcon: const Icon(Icons.phone_outlined),
                  keyboardType: TextInputType.phone,
                ),
                32.verticalSpace,
                Text(
                  'profile.change_password'.tr(),
                  style: tt.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                16.verticalSpace,
                AppTextField(
                  label: 'profile.current_password'.tr(),
                  controller: _currentPasswordController,
                  obscureText: _obscureCurrentPassword,
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() {
                      _obscureCurrentPassword = !_obscureCurrentPassword;
                    }),
                    icon: Icon(
                      _obscureCurrentPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
                16.verticalSpace,
                AppTextField(
                  label: 'auth.password'.tr(),
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() {
                      _obscurePassword = !_obscurePassword;
                    }),
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
                16.verticalSpace,
                AppTextField(
                  label: 'auth.confirm_password'.tr(),
                  controller: _passwordConfirmationController,
                  obscureText: _obscureConfirmPassword,
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() {
                      _obscureConfirmPassword = !_obscureConfirmPassword;
                    }),
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                  validator: (v) {
                    final password = _passwordController.text;
                    if (password.isNotEmpty && v != password) {
                      return 'auth.passwords_do_not_match'.tr();
                    }
                    return null;
                  },
                ),
                32.verticalSpace,
                BlocBuilder<ProfileBloc, ProfileState>(
                  buildWhen: (prev, curr) =>
                      prev.actionStatus != curr.actionStatus,
                  builder: (context, state) {
                    return AppButton(
                      label: 'profile.save_changes'.tr(),
                      isFullWidth: true,
                      isLoading: state.actionStatus.isLoading,
                      onPressed: _submit,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarSection(BuildContext context) {
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
              border: Border.all(
                color: cs.primary,
                width: 2,
              ),
            ),
            child: ClipOval(
              child: _avatarFile != null
                  ? Image.file(
                      _avatarFile!,
                      fit: BoxFit.cover,
                    )
                  : BlocBuilder<ProfileBloc, ProfileState>(
                      buildWhen: (prev, curr) => prev.user != curr.user,
                      builder: (context, state) {
                        final user = state.user;
                        if (user?.avatarUrl != null) {
                          return CachedNetworkImage(
                            imageUrl: user!.avatarUrl!,
                            fit: BoxFit.cover,
                            placeholder: (_, __) => const AppLoading(),
                            errorWidget: (_, __, ___) => Icon(
                              Icons.person,
                              size: 50.r,
                              color: cs.primary,
                            ),
                          );
                        }
                        return Icon(
                          Icons.person,
                          size: 50.r,
                          color: cs.primary,
                        );
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
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 16.r,
                  color: cs.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
