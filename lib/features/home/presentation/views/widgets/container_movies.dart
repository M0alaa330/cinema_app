import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/presentation/views/home_details_screen.dart';
import 'package:flutter/material.dart';

class Containermovies extends StatelessWidget {
  const Containermovies({super.key, required this.trendingModel, this.id});
  final TrendingModel trendingModel;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeDetailsScreen(
              data: trendingModel,
            );
          }));
        },
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: trendingModel.posterpath == null
                      ? const AssetImage("assets/images/error.jpg")
                          as ImageProvider
                      : NetworkImage(
                              "https://image.tmdb.org/t/p/w500${trendingModel.posterpath}")
                          as ImageProvider,
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
