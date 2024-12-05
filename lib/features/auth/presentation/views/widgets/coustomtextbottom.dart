import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:flutter/material.dart';

class CustomTextBottom extends StatelessWidget {
  const CustomTextBottom({
    super.key,
    required this.text,
    required this.ontap,
  });
  final String text;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () {
          ontap();
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffde0b30)),
          child: Center(
            child: Text(
              text,
              style: textStyle(Colors.white, 20, FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
