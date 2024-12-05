import 'package:cinema_app/features/search/data/repo/search_repo_imple.dart';
import 'package:cinema_app/features/search/presentation/controller/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepoImple}) : super(InitialstateSearch());

  SearchRepoImple searchRepoImple;
  fetchsearch({required String movie}) async {
    emit((LoadingstateSearch()));
    var value = await searchRepoImple.getserch(movie: movie);
    return value.fold((error) {
      return emit(ErrorstateSearch(error));
    }, (movie) {
      return emit(LoadedstateSearch(movie));
    });
  }
}
