import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/similar_movies/similar_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/similar_movies/similar_state.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/container_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Similarlist extends StatelessWidget {
  const Similarlist({super.key, required this.data});
  final TrendingModel data;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCubit, SimilarState>(builder: (context, state) {
      if (state is LoadedstateSimilar) {
        return GridView.builder(
            itemCount: state.similarlist!.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Containermovies(
                  trendingModel: state.similarlist![index],
                  id: state.similarlist![index].id);
            });
      } else if (state is ErrorstateSimilar) {
        return Text(state.error!);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
