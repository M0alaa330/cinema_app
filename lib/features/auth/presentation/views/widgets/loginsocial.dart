import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSocialmedia extends StatelessWidget {
  LoginSocialmedia({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });
  final String image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                height: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                text,
                style: textStyle(Colors.white, 18, FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
