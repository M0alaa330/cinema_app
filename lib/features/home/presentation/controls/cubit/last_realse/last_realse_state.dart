import 'package:cinema_app/features/home/data/model/trending_model.dart';

abstract class LastRealseState {}

class InitialstateLastRealse extends LastRealseState {}

class LoadingstateLastRealse extends LastRealseState {}

class LoadedstateLastRealse extends LastRealseState {
  List<TrendingModel>? lastrealselist = [];
  LoadedstateLastRealse(this.lastrealselist);
}

class ErrorstateLastRealse extends LastRealseState {
  String? error;
  ErrorstateLastRealse(this.error);
}
