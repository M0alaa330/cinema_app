import 'package:cinema_app/core/utlies/helpers/applocators.dart';
import 'package:cinema_app/features/home/data/repo/home_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/categorymovies/category_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/last_realse/last_realse_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/popular_now/popular_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/trending/Trending_cubit.dart';
import 'package:cinema_app/features/search/data/repo/search_repo_imple.dart';
import 'package:cinema_app/features/search/presentation/controller/cubit/search_cubit.dart';
import 'package:cinema_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
  setup();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                Trendingcubit(homeRepoImple: getIt.get<HomeRepoImple>())
                  ..fetchTrending(),
          ),
          BlocProvider(
              create: (context) =>
                  LastRealseCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..fetchlastrealse()),
          BlocProvider(
              create: (context) =>
                  PopularCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..fetchpopular()),
          BlocProvider(
              create: (context) =>
                  SearchCubit(searchRepoImple: getIt.get<SearchRepoImple>())),
          BlocProvider(
              create: (context) =>
                  CategoryCubit(homeRepoImple: getIt.get<HomeRepoImple>())
                    ..fetchcategory()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ));
  }
}
