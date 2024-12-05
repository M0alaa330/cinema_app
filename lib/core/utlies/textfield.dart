import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield(
      {super.key,
      required this.controller,
      required this.isshow,
      required this.labeltext,
      this.icon,
      this.onsubmitted});
  TextEditingController? controller = TextEditingController();
  final bool isshow;
  final String? labeltext;
  final IconData? icon;
  final dynamic onsubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        onSubmitted: onsubmitted,
        style: textStyle(Colors.white, 15, FontWeight.normal),
        obscureText: isshow,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white60),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white60)),
            label: Text(
              labeltext!,
              style: textStyle(Colors.white60, 17, FontWeight.normal),
            ),
            suffixIcon: Icon(icon),
            suffixIconColor: Colors.white60),
      ),
    );
  }
}
