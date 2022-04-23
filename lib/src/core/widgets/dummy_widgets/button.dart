import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? ontap;
  final Color? color;
  final Color? textColor;
  final BoxBorder? border;
  final Widget? child;
  const Button({
    Key? key,
    required this.ontap,
    this.color,
    this.border,
    this.textColor,
    required this.child,
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
        child: child,
      ),
    );
  }
}
