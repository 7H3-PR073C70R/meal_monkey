import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/button.dart';
import 'package:meal_monkey/src/features/auth/otp/presentation/pages/widgets/otp_input.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'We have sent an OTP to your Mobile',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, height: 1.5),
            ),
            AppSpacing.verticalSpaceMedium,
            const Text(
              'Please check your mobile number 071******12 to continue to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.greyColor),
            ),
            AppSpacing.verticalSpaceLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(controller: _fieldOne, autoFocus: true),
                OtpInput(controller: _fieldTwo),
                OtpInput(controller: _fieldThree),
                OtpInput(controller: _fieldFour)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
              color: AppColors.primary,
              ontap: () {
                //       _otp = _fieldOne.text + _fieldTwo.text  +_fieldThree.text +  _fieldFour.text;
              },
              child: const Text(
                'Next',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("did'nt recieve?"),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Click Here',
                    style: TextStyle(color: AppColors.orange),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
