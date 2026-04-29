import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/injection/injection.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileBloc>()..add(const GovernoratesFetched()),
      child: const _AddAddressView(),
    );
  }
}

class _AddAddressView extends StatefulWidget {
  const _AddAddressView();

  @override
  State<_AddAddressView> createState() => _AddAddressViewState();
}

class _AddAddressViewState extends State<_AddAddressView> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _addressController = TextEditingController();

  String? _selectedGovernorateId;
  String? _selectedCenterId;

  @override
  void dispose() {
    _titleController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedGovernorateId == null) {
      context.showErrorSnackBar('profile.select_governorate'.tr());
      return;
    }
    if (_selectedCenterId == null) {
      context.showErrorSnackBar('profile.select_center'.tr());
      return;
    }

    context.read<ProfileBloc>().add(AddressCreated(
          title: _titleController.text.trim(),
          address: _addressController.text.trim(),
          governorateId: _selectedGovernorateId!,
          centerId: _selectedCenterId!,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile.add_address'.tr()),
        centerTitle: true,
      ),
      body: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (prev, curr) =>
            prev.addressStatus != curr.addressStatus &&
            curr.addressStatus.isDone,
        listener: (context, state) {
          if (state.addressStatus.isSuccess) {
            context.showSuccessSnackBar('profile.address_added'.tr());
            context.pop();
          } else if (state.addressStatus.isFailure &&
              state.addressError != null) {
            context.showErrorSnackBar(state.addressError!);
          }
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                AppTextField(
                  label: 'profile.address_title'.tr(),
                  hint: 'profile.address_title_hint'.tr(),
                  controller: _titleController,
                  prefixIcon: const Icon(Icons.label_outline),
                  validator: (v) =>
                      v!.isEmpty ? 'profile.title_required'.tr() : null,
                ),
                16.verticalSpace,
                AppTextField(
                  label: 'profile.address_details'.tr(),
                  hint: 'profile.address_details_hint'.tr(),
                  controller: _addressController,
                  prefixIcon: const Icon(Icons.location_on_outlined),
                  maxLines: 3,
                  validator: (v) =>
                      v!.isEmpty ? 'profile.address_required'.tr() : null,
                ),
                16.verticalSpace,
                _buildGovernorateDropdown(context),
                16.verticalSpace,
                _buildCenterDropdown(context),
                32.verticalSpace,
                BlocBuilder<ProfileBloc, ProfileState>(
                  buildWhen: (prev, curr) =>
                      prev.addressStatus != curr.addressStatus,
                  builder: (context, state) {
                    return AppButton(
                      label: 'profile.save_address'.tr(),
                      isFullWidth: true,
                      isLoading: state.addressStatus.isLoading,
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

  Widget _buildGovernorateDropdown(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (prev, curr) =>
          prev.governorateStatus != curr.governorateStatus ||
          prev.governorates != curr.governorates,
      builder: (context, state) {
        if (state.governorateStatus.isLoading) {
          return const AppLoading();
        }

        if (state.governorateStatus.isFailure &&
            state.governorateError != null) {
          return Text(state.governorateError!);
        }

        return AppDropdown<String>(
          label: 'profile.governorate'.tr(),
          prefixIcon: const Icon(Icons.map_outlined),
          value: _selectedGovernorateId,
          items: state.governorates.map((g) {
            return DropdownMenuItem(
              value: g.id,
              child: Text(g.name),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedGovernorateId = value;
              _selectedCenterId = null;
            });
            if (value != null) {
              context.read<ProfileBloc>().add(CentersFetched(value));
            }
          },
          validator: (v) =>
              v == null ? 'profile.select_governorate'.tr() : null,
        );
      },
    );
  }

  Widget _buildCenterDropdown(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (prev, curr) =>
          prev.centerStatus != curr.centerStatus ||
          prev.centers != curr.centers,
      builder: (context, state) {
        if (state.centerStatus.isLoading) {
          return const AppLoading();
        }

        final hasGovernorate = _selectedGovernorateId != null;

        return AppDropdown<String>(
          label: 'profile.center'.tr(),
          prefixIcon: const Icon(Icons.location_city_outlined),
          value: _selectedCenterId,
          enabled: hasGovernorate && state.centers.isNotEmpty,
          items: state.centers.map((c) {
            return DropdownMenuItem(
              value: c.id,
              child: Text(c.name),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedCenterId = value;
            });
          },
          validator: (v) => v == null ? 'profile.select_center'.tr() : null,
        );
      },
    );
  }
}
