import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  final Color? color;
  final Color? textColor;
  final BoxBorder? border;

  const Button({
    Key? key,
    required this.text,
    required this.ontap,
    this.color,
    this.border,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
          border: border,
        ),
        child: Text(
          text,
          style: AppTextStyle.headerTwoTextStyle
              .copyWith(color: textColor ?? Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
