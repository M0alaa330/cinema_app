import 'package:cinema_app/features/home/data/repo/home_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/last_realse/last_realse_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LastRealseCubit extends Cubit<LastRealseState> {
  LastRealseCubit({required this.homeRepoImple})
      : super(InitialstateLastRealse());
  HomeRepoImple homeRepoImple;
  fetchlastrealse() async {
    emit(LoadingstateLastRealse());
    var value = await homeRepoImple.getplayingnow();
    return value.fold((error) {
      return emit(ErrorstateLastRealse(error));
    }, (movies) {
      return emit(LoadedstateLastRealse(movies));
    });
  }
}
