import 'package:cinema_app/features/home/presentation/controls/cubit/trending/Trending_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/trending/Trending_state.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/container_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingListview extends StatelessWidget {
  const TrendingListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Trendingcubit, Appstate>(builder: (context, state) {
      if (state is Loadedstate) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.trendinglist!.length,
            itemBuilder: (context, index) {
              return Containermovies(
                trendingModel: state.trendinglist![index],
              );
            });
      } else if (state is Errorstate) {
        return Text(state.error!);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
