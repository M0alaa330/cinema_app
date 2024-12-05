import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<String, List<TrendingModel>>> getserch({required String movie});
}
