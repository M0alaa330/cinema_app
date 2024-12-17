import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/core/shared_prefraces_helper/shared_pref_helper.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/auth/presentation/views/widgets/loginsocial.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/lists/similar_list.dart';
import 'package:flutter/material.dart';

class Moviedetailsbody extends StatefulWidget {
  const Moviedetailsbody({
    super.key,
    required this.datas,
  });
  final TrendingModel datas;

  @override
  State<Moviedetailsbody> createState() => _MoviedetailsbodyState();
}

class _MoviedetailsbodyState extends State<Moviedetailsbody> {
  bool isfavourites = false;
  Future<void> checkIfFavourite() async {
    List<String> favourites = SharedPrefHelper.getFavourites();
    setState(() {
      isfavourites = favourites.contains(widget.datas.id);
    });
  }

  Future<void> toggleFavourite() async {
    if (isfavourites) {
      await SharedPrefHelper.removeFavourite(itemId: widget.datas.id!);
    } else {
      await SharedPrefHelper.getFavourite(itemId: widget.datas.id!);
    }
    setState(() {
      isfavourites = !isfavourites;
    });
  }

  @override
  void initState() {
    super.initState();
    checkIfFavourite();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.datas.name);
    return Scaffold(
        backgroundColor: const Color(0xff05041f),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: widget.datas.posterpath != null
                            ? NetworkImage(
                                "https://image.tmdb.org/t/p/w500${widget.datas.posterpath}")
                            : const AssetImage("assets/images/error.jpg")
                                as ImageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 50,
                    child: InkWell(
                      onTap: toggleFavourite,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          isfavourites
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180, bottom: 20),
                child: Text(
                  widget.datas.name?.isNotEmpty == true
                      ? widget.datas.name!
                      : "no title",
                  style: textStyle(Colors.white, 30, FontWeight.bold),
                ),
              ),
              Text(
                "${widget.datas.originallanguage ?? 'Unknown'} | ${widget.datas.releasedate ?? 'Unknown'} | Popularity: ${widget.datas.popularity ?? 'N/A'}",
                style: textStyle(Colors.grey[400]!, 18, FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginSocialmedia(
                      image: "assets/svg/play.svg",
                      text: 'Play',
                      color: const Color(0xffde0b30),
                    ),
                    const SizedBox(width: 30),
                    LoginSocialmedia(
                      color: Colors.grey[600]!,
                      image: "assets/svg/download.svg",
                      text: "Download",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.datas.desc ?? 'No Title',
                  overflow: TextOverflow.ellipsis,
                  style: textStyle(Colors.white70, 18, FontWeight.bold),
                  maxLines: 8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Similar",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Similarlist(data: widget.datas)
            ]),
          ),
        ]));
  }
}


  // Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(
  //               "eg",
  //               style: textStyle(Colors.grey[400]!, 20, FontWeight.normal),
  //             ),
  //             SizedBox(
  //               width: 5,
  //             ),
  //             Container(
  //               width: 2,
  //               height: 20,
  //               color: Colors.grey[400],
  //             ),
  //             SizedBox(
  //               width: 5,
  //             ),
  //             Text(
  //               "2023 - 05 - 31",
  //               style: textStyle(Colors.grey[400]!, 20, FontWeight.normal),
  //             ),
  //             SizedBox(
  //               width: 5,
  //             ),
  //             Container(
  //               width: 2,
  //               height: 20,
  //               color: Colors.grey[400],
  //             ),
  //             SizedBox(
  //               width: 5,
  //             ),
  //             Text(
  //               "2023 - 05 - 31",
  //               style: textStyle(Colors.grey[400]!, 20, FontWeight.normal),
  //             ),
  //           ],
  //         )

      // padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //     child: GridView.builder(
      //       shrinkWrap: true,
      //       physics: NeverScrollableScrollPhysics(), // Disable scroll inside grid
      //       itemCount: data.length,
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2, // Number of columns
      //         crossAxisSpacing: 10, // Space between columns
      //         mainAxisSpacing: 10, // Space between rows
      //         childAspectRatio: 0.7, // Aspect ratio to shape the posters (taller)
      //       ),
      //       itemBuilder: (context, index) {
      //         return MoviePoster(movie: movies[index]);
      //       },
      //     ),
      //   ),