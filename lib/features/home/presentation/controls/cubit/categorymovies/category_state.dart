import 'package:cinema_app/features/home/data/model/movies_category.dart';

abstract class CategoryState {}

class InitialstateCategory extends CategoryState {}

class LoadingstateCategory extends CategoryState {}

class LoadedstateCategory extends CategoryState {
  List<MoviesCategory>? categorylist = [];
  LoadedstateCategory(this.categorylist);
}

class ErrorstateCategory extends CategoryState {
  String? error;
  ErrorstateCategory(this.error);
}
