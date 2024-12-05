import 'package:cinema_app/features/home/data/repo/home_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/popular_now/popular_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularCubit extends Cubit<PopularState> {
  PopularCubit({required this.homeRepoImple}) : super(InitialstatePopular());

  HomeRepoImple homeRepoImple;
  fetchpopular({int? id}) async {
    emit((LoadingstatePopular()));
    var value = await homeRepoImple.getpopular();
    return value.fold((error) {
      return emit(ErrorstatePopular(error));
    }, (movies) {
      return emit(LoadedstatePopular(movies));
    });
  }
}
