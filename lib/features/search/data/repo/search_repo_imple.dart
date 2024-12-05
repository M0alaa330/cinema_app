import 'package:cinema_app/core/api/api_service.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImple implements SearchRepo {
  ApiService apiService;
  SearchRepoImple({required this.apiService});
  @override
  Future<Either<String, List<TrendingModel>>> getserch(
      {required String movie}) async {
    try {
      var data = await apiService.getMovies(
          endpoint: "search/movie",
          apikey:
              '?api_key=f26312e249bb4d2428e19c8bfb683008&language=en-US&query=$movie');
      List<TrendingModel> listmovies = [];
      for (var i in data['results']) {
        listmovies.add(TrendingModel.fromjson(i));
      }
      return right(listmovies);
    } catch (e) {
      return left(e.toString());
    }
  }
}
