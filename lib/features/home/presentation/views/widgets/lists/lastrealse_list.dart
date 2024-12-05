import 'package:cinema_app/features/home/presentation/controls/cubit/last_realse/last_realse_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/last_realse/last_realse_state.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/container_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastrealseList extends StatelessWidget {
  const LastrealseList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LastRealseCubit, LastRealseState>(
        builder: (context, state) {
      if (state is LoadedstateLastRealse) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.lastrealselist!.length,
            itemBuilder: (context, index) {
              return Containermovies(
                  trendingModel: state.lastrealselist![index]);
            });
      } else if (state is ErrorstateLastRealse) {
        return Text(state.error!);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
