import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/core/utlies/model/data.dart';
import 'package:cinema_app/features/saved/presentation/views/widgets/customcard.dart';
import 'package:flutter/material.dart';

class SavedBody extends StatelessWidget {
  const SavedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff05041f),
        body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Saved",
                    style: textStyle(Colors.white, 30, FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return CustomCard(datas: data[index]);
                        }),
                  ),
                ],
              ),
            )));
  }
}
