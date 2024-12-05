import 'package:cinema_app/features/home/data/model/trending_model.dart';

abstract class PopularState {}

class InitialstatePopular extends PopularState {}

class LoadingstatePopular extends PopularState {}

class LoadedstatePopular extends PopularState {
  List<TrendingModel> popularrlist = [];
  LoadedstatePopular(this.popularrlist);
}

class ErrorstatePopular extends PopularState {
  String? error;
  ErrorstatePopular(this.error);
}
