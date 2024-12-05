import 'package:cinema_app/core/api/api_service.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/home/data/repo/reposimilar/similar_repo.dart';
import 'package:dartz/dartz.dart';

class SimilarRepoImple implements SimilarRepo {
  ApiService apiService;
  SimilarRepoImple({required this.apiService});
  @override
  Future<Either<String, List<TrendingModel>>> getsimilarmovies(
      {required int id}) async {
    try {
      var data = await apiService.getMovies(
          endpoint: "movie/$id/similar",
          apikey: '?api_key=f26312e249bb4d2428e19c8bfb683008&language=en-US');
      List<TrendingModel> similarlist = [];
      for (var i in data['results']) {
        similarlist.add(TrendingModel.fromjson(i));
      }

      return right(similarlist);
    } catch (e) {
      return left(e.toString());
    }
  }
}
