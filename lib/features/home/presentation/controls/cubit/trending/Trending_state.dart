import 'package:cinema_app/features/home/data/model/trending_model.dart';

abstract class Appstate {}

class Initialstate extends Appstate {}

class Loadingstate extends Appstate {}

class Loadedstate extends Appstate {
  List<TrendingModel>? trendinglist = [];
  Loadedstate(this.trendinglist);
}

class Errorstate extends Appstate {
  String? error;
  Errorstate(this.error);
}
