import 'package:cinema_app/features/home/data/model/trending_model.dart';

abstract class SearchState {}

class InitialstateSearch extends SearchState {}

class LoadingstateSearch extends SearchState {}

class LoadedstateSearch extends SearchState {
  final List<TrendingModel>? movie;
  LoadedstateSearch(this.movie);
}

class ErrorstateSearch extends SearchState {
  String? error;
  ErrorstateSearch(this.error);
}
