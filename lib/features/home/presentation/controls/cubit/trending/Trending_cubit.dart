import 'package:cinema_app/features/home/data/repo/home_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/trending/Trending_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Trendingcubit extends Cubit<Appstate> {
  Trendingcubit({required this.homeRepoImple}) : super(Initialstate());

  HomeRepoImple homeRepoImple;
  fetchTrending() async {
    emit(Loadingstate());
    var value = await homeRepoImple.getTrending();
    return value.fold((error) {
      return emit(Errorstate(error));
    }, (movies) {
      return emit(Loadedstate(movies));
    });
  }
}
