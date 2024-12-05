import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/popular_now/popular_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/popular_now/popular_state.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/customcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Carouselslider extends StatelessWidget {
  const Carouselslider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularCubit, PopularState>(builder: (context, state) {
      if (state is LoadedstatePopular) {
        return CarouselSlider.builder(
          itemCount: state.popularrlist.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Customcontainer(data: state.popularrlist[itemIndex]),
          options: CarouselOptions(
            height: 500,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        );
      } else if (state is ErrorstatePopular) {
        return Text(state.error!);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
/* 
 
 
 */