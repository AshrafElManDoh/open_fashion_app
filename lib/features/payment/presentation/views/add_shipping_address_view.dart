import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/core/widgets/custom_appbar.dart';
import 'package:open_fashion_app/core/widgets/custom_button.dart';
import 'package:open_fashion_app/features/item_details/presentation/views/widgets/header.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';
import 'package:open_fashion_app/features/payment/presentation/views/widgets/custom_text_field.dart';

class AddShippingAddressView extends StatefulWidget {
  const AddShippingAddressView({
    super.key,
    this.first,
    this.last,
    this.address,
    this.city,
    this.state,
    this.zipCode,
    this.phone,
  });
  final String? first, last, address, city, state, zipCode, phone;

  @override
  State<AddShippingAddressView> createState() => _AddShippingAddressViewState();
}

class _AddShippingAddressViewState extends State<AddShippingAddressView> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    firstNameController.text = widget.first ?? "";
    lastNameController.text = widget.last ?? "";
    addressController.text = widget.address ?? "";
    cityController.text = widget.city ?? "";
    zipCodeController.text = widget.zipCode ?? "";
    stateController.text = widget.state ?? "";
    phoneController.text = widget.phone ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Header(title: "Add shipping address", spacing: 3),
                  SizedBox(height: 20),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                label: 'First name',
                                controller: firstNameController,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CustomTextField(
                                label: 'Last name',
                                controller: lastNameController,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        CustomTextField(
                          label: 'Address',
                          controller: addressController,
                        ),
                        SizedBox(height: 30),
                        CustomTextField(
                          label: 'City',
                          controller: cityController,
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                label: 'State',
                                controller: stateController,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CustomTextField(
                                label: 'ZIP Code',
                                controller: zipCodeController,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        CustomTextField(
                          label: 'Phone Number',
                          controller: phoneController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            final data = {
              'first': firstNameController.text,
              'last': lastNameController.text,
              'address': addressController.text,
              'city': cityController.text,
              'state': stateController.text,
              'zip': zipCodeController.text,
              'phone': phoneController.text,
            };
            context.read<DetailsCubit>().savedAddress = data;
            Navigator.pop(context);
          }
        },
        title: "Add address",
      ),
    );
  }
}
