import 'package:cinema_app/features/home/data/model/trending_model.dart';

abstract class SimilarState {}

class InitialstateSimilar extends SimilarState {}

class LoadingstateSimilar extends SimilarState {}

class LoadedstateSimilar extends SimilarState {
  List<TrendingModel>? similarlist = [];
  LoadedstateSimilar(this.similarlist);
}

class ErrorstateSimilar extends SimilarState {
  String? error;
  ErrorstateSimilar(this.error);
}
