import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/home/data/model/movies_category.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.data,
  });
  final MoviesCategory data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffde0b30),
      ),
      child: Center(
          child: Text(
        data.name,
        style: textStyle(Colors.white, 20, FontWeight.bold),
      )),
    );
  }
}


/*

SlideSwitcher(
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
*/
