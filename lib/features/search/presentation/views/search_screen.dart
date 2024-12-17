import 'package:cinema_app/core/utlies/helpers/applocators.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/data/repo/reposimilar/similar_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/similar_movies/similar_cubit.dart';
import 'package:cinema_app/features/search/data/repo/search_repo_imple.dart';
import 'package:cinema_app/features/search/presentation/controller/cubit/search_cubit.dart';
import 'package:cinema_app/features/search/presentation/views/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, this.data});
  final TrendingModel? data;

  @override
  Widget build(BuildContext context) {
    return SearchBody();
  }
}
