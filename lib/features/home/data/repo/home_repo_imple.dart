import 'package:cinema_app/core/api/api_service.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  ApiService apiService;
  HomeRepoImple({required this.apiService});
  @override
  Future<Either<String, List<TrendingModel>>> getTrending() async {
    try {
      var data = await apiService.getMovies(
          endpoint: "trending/all/week",
          apikey: '?api_key=f26312e249bb4d2428e19c8bfb683008&language=en-US');
      List<TrendingModel> trendinglist = [];
      for (var i in data['results']) {
        trendinglist.add(TrendingModel.fromjson(i));
      }

      return right(trendinglist);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<TrendingModel>>> getplayingnow() async {
    try {
      var data = await apiService.getMovies(
          endpoint: "movie/now_playing",
          apikey: '?api_key=f26312e249bb4d2428e19c8bfb683008&language=en-US');
      List<TrendingModel> playingnowlist = [];
      for (var i in data['results']) {
        playingnowlist.add(TrendingModel.fromjson(i));
      }

      return right(playingnowlist);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<TrendingModel>>> getpopular() async {
    try {
      var data = await apiService.getMovies(
          endpoint: "movie/popular",
          apikey: '?api_key=f26312e249bb4d2428e19c8bfb683008&language=en-US');
      List<TrendingModel> popularlist = [];
      for (var i in data['results']) {
        popularlist.add(TrendingModel.fromjson(i));
      }

      return right(popularlist);
    } catch (e) {
      return left(e.toString());
    }
  }
}
//movie/upcoming
//trending/all/week
///movie/popular
//movie/now_playing