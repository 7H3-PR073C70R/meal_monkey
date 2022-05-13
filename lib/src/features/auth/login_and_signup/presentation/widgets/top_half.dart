import 'package:flutter/material.dart';

class TopHalf extends StatelessWidget {
  const TopHalf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/login background shape.png'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset('assets/images/Logo.png'),
        )
      ],
    );
  }
}
