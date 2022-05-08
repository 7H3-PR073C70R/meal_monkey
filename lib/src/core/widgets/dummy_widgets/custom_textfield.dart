import 'package:flutter/material.dart';

import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final IconData? prefixIcon;

  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.initialValue,
    this.prefixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      initialValue: initialValue,
      cursorHeight: 25,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          size: 25,
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.headerTwoTextStyle,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}
