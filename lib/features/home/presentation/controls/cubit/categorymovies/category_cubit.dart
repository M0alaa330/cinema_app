import 'package:cinema_app/features/home/data/repo/home_repo_imple.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/categorymovies/category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.homeRepoImple}) : super(InitialstateCategory());
  HomeRepoImple homeRepoImple;
  fetchcategory() async {
    emit(LoadingstateCategory());
    var value = await homeRepoImple.getcatergory();
    return value.fold((error) {
      return emit(ErrorstateCategory(error));
    }, (categorylist) {
      return emit(LoadedstateCategory(categorylist));
    });
  }
}
