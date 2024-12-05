import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/core/utlies/model/data.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.datas,
  });
  final Data datas;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xff1d1e30), borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 8, right: 8),
              child: Container(
                height: 140,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(datas.image), fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    datas.name,
                    style: textStyle(Colors.white, 20, FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "2023-05-31",
                    style: textStyle(Colors.grey[700]!, 18, FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xffde0b30),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        "Watch Now",
                        style: textStyle(Colors.white, 20, FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_forever_rounded,
                    size: 50,
                    color: Colors.grey[500],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
