import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/auth/presentation/views/widgets/coustomtextbottom.dart';
import 'package:cinema_app/core/utlies/textfield.dart';
import 'package:flutter/material.dart';

class ForgetpasswordBody extends StatelessWidget {
  ForgetpasswordBody({super.key});
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05041f),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 170.0),
            child: Text(
              "Forgot Password?",
              style: textStyle(Colors.white, 25, FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Text(
              "You forgot your password? do not worry, please enter your rcovery email address.",
              style: textStyle(Colors.white70, 15, FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Textfield(
              controller: email, isshow: true, labeltext: "Email Address"),
          const SizedBox(
            height: 15,
          ),
          CustomTextBottom(text: "submit", ontap: () {})
        ],
      ),
    );
  }
}
