import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final IconData? prefixIcon;
  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.initialValue,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      cursorHeight: 25,
      cursorColor: AppColors.greyColor,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          size: 25,
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.headerFourTextStyle,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}
