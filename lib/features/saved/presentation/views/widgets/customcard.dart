import 'package:flutter/material.dart';
import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';

class CustomCard extends StatelessWidget {
  final TrendingModel datas;
  final VoidCallback onDelete;

  const CustomCard({
    super.key,
    required this.datas,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff1d1e30),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            // Movie Poster
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: datas.posterpath != null
                        ? NetworkImage(
                            "https://image.tmdb.org/t/p/w500${datas.posterpath}")
                        : const AssetImage("assets/images/error.jpg")
                            as ImageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Movie Details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      datas.name?.isNotEmpty == true ? datas.name! : "Untitled",
                      style: textStyle(Colors.white, 20, FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      datas.releasedate?.isNotEmpty == true
                          ? datas.releasedate!
                          : "Unknown Release Date",
                      style: textStyle(Colors.grey[500]!, 16, FontWeight.bold),
                    ),
                    const Spacer(),
                    // Watch Now Button
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xffde0b30),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Watch Now",
                          style: textStyle(Colors.white, 18, FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Delete Button
            IconButton(
              onPressed: onDelete,
              icon: Icon(
                Icons.delete_forever_rounded,
                size: 30,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
