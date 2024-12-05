import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/moviedetails_body.dart';
import 'package:flutter/material.dart';
import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.data});
  final TrendingModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Moviedetailsbody(datas: data);
      })),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[400],
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(4, 4),
                    blurRadius: 8,
                    spreadRadius: 2)
              ]),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: data.posterpath != null
                    ? Image.network(
                        'https://image.tmdb.org/t/p/w92${data.posterpath}',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 75,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image, size: 50),
                      )
                    : const Icon(Icons.broken_image, size: 50),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  data.name ?? "No Name Available",
                  style: textStyle(Colors.white, 20, FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
