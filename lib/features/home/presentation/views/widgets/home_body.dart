import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/carouselslide.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/lists/lastrealse_list.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/lists/listcategory.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/tabbar.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/lists/trending_listview.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff05041f),
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 250,
                  child: Carouselslider(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                  child: Listcategory(),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 210.0),
                      child: Text(
                        "Trending Movies",
                        style: textStyle(Colors.white, 25, FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(height: 200, child: TrendingListview())
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 240.0),
                      child: Text(
                        "Lastet Movies",
                        style: textStyle(Colors.white, 25, FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(height: 200, child: LastrealseList())
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
