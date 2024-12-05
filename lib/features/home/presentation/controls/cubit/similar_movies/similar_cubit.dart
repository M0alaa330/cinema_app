import 'package:cinema_app/features/home/data/repo/reposimilar/similar_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/similar_movies/similar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit({required this.similarRepoImple}) : super(InitialstateSimilar());

  SimilarRepoImple similarRepoImple;
  fetchsimilar({int? id}) async {
    emit(LoadingstateSimilar());
    var value = await similarRepoImple.getsimilarmovies(id: id!);
    return value.fold((error) {
      return emit(ErrorstateSimilar(error));
    }, (movies) {
      return emit(LoadedstateSimilar(movies));
    });
  }
}
