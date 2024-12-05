import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:flutter/material.dart';

class Customcontainer extends StatelessWidget {
  const Customcontainer({
    super.key,
    required this.data,
  });
  final TrendingModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: data.posterpath != null
                  ? NetworkImage(
                      "https://image.tmdb.org/t/p/w500${data.posterpath}")
                  : const AssetImage("assets/images/error.jpg")
                      as ImageProvider,
              fit: BoxFit.fill)),
    );
  }
}
