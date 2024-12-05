import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideSwitcher(
      slidersColors: const [Color(0xffde0b30)],
      containerColor: const Color(0xff05041f),
      containerBorderRadius: 15,
      onSelect: (index) {},
      containerHeight: 40,
      containerWight: 350,
      children: [
        Text(
          'Action',
          style: textStyle(Colors.white, 20, FontWeight.bold),
        ),
        Text('Advanture', style: textStyle(Colors.white, 20, FontWeight.bold)),
        Text('Animation', style: textStyle(Colors.white, 20, FontWeight.bold)),
      ],
    );
  }
}
