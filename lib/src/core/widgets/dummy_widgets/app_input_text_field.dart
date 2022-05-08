import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeHolder;
  final bool isPassword;
  final bool enabled;
  final bool passwordVisibility;
  final String? label;
  final Color? iconColor;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final FocusNode? focusNode;
  final int maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final void Function()? onVisibilityToggled;
  final void Function(String value)? onChanged;
  final String? Function(String?)? validator;
  const AppInputField(
      {Key? key,
      this.passwordVisibility = false,
      this.controller,
      this.maxLength,
      this.placeHolder,
      this.onChanged,
      this.keyboardType,
      this.validator,
      this.iconColor,
      this.label,
      this.style,
      this.hintStyle,
      this.backgroundColor,
      this.focusNode,
      this.maxLines = 1,
      this.isPassword = false,
      this.enabled = true,
      this.onVisibilityToggled,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final circularBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );
    return Column(
      children: [
        if (label != null)
          Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    label ?? '',
                    style: AppTextStyle.inputLabelStyle,
                  ),),
              const SizedBox(
                height: 2,
              )
            ],
          ),
        Stack(
          children: [
            TextFormField(
              
              controller: controller,
              style: style ?? AppTextStyle.inputLabelStyle.copyWith(height: 1),
              keyboardType: keyboardType,
              validator: validator,
              focusNode: focusNode,
              onChanged: onChanged,
              enabled: enabled,
              maxLines: isPassword ? 1 : maxLines,
              maxLength: maxLength,
              obscureText: passwordVisibility,
              decoration: InputDecoration(
                hintText: placeHolder,
                counterText: '',
                hintStyle: hintStyle,
                errorMaxLines: 3,
                fillColor: backgroundColor ?? AppColors.greyLightColor,
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                border: circularBorder.copyWith(borderSide: BorderSide.none),
                disabledBorder: circularBorder.copyWith(
                    borderSide: const BorderSide(color: AppColors.greyLightColor),),
                errorBorder: circularBorder.copyWith(
                    borderSide: const BorderSide(color: AppColors.red),),
              ),
            ),
            if (isPassword)
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: onVisibilityToggled,
                    icon: Icon(
                      passwordVisibility
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: iconColor ?? AppColors.blueColor,
                    ),),
              )
          ],
        ),
      ],
    );
  }

}
