import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:dartz/dartz.dart';

abstract class SimilarRepo {
  Future<Either<String, List<TrendingModel>>> getsimilarmovies(
      {required int id});
}
