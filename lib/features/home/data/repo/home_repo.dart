import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<TrendingModel>>> getTrending();
  Future<Either<String, List<TrendingModel>>> getplayingnow();
  Future<Either<String, List<TrendingModel>>> getpopular();
}
