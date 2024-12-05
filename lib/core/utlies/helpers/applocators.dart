import 'package:cinema_app/core/api/api_service.dart';
import 'package:cinema_app/features/home/data/repo/home_repo_imple.dart';
import 'package:cinema_app/features/home/data/repo/reposimilar/similar_repo_imple.dart';
import 'package:cinema_app/features/search/data/repo/search_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoImple>(
      HomeRepoImple(apiService: getIt.get<ApiService>()));
  getIt.registerSingleton<SimilarRepoImple>(
      SimilarRepoImple(apiService: getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImple>(
      SearchRepoImple(apiService: getIt.get<ApiService>()));
}
