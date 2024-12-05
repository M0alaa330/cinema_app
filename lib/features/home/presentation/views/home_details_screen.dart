import 'package:cinema_app/core/utlies/helpers/applocators.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/data/repo/reposimilar/similar_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/similar_movies/similar_cubit.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/moviedetails_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({super.key, required this.data});
  final TrendingModel data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          final cubit = SimilarCubit(
            similarRepoImple: getIt.get<SimilarRepoImple>(),
          );
          cubit.fetchsimilar(id: data.id!);
          return cubit;
        },
        child: Moviedetailsbody(datas: data));
  }
}
 
     // child: Moviedetailsbody(datas: data),