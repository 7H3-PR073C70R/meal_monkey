import 'dart:io' show Platform;
import 'package:flutter/material.dart';

class PlatformBuilder extends StatelessWidget {
  final Widget ios;
  final Widget android;
  const PlatformBuilder(
      {Key? key, required this.android, required this.ios,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) => Platform.isIOS ? ios : android);
  }
}
