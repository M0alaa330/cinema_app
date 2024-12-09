import 'package:cinema_app/features/home/presentation/controls/cubit/categorymovies/category_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/categorymovies/category_state.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/last_realse/last_realse_cubit.dart';
import 'package:cinema_app/features/home/presentation/controls/cubit/last_realse/last_realse_state.dart';
import 'package:cinema_app/features/home/presentation/views/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Listcategory extends StatelessWidget {
  const Listcategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
      if (state is LoadedstateCategory) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.categorylist!.length,
            itemBuilder: (context, index) {
              return CustomTabBar(data: state.categorylist![index]);
            });
      } else if (state is ErrorstateCategory) {
        return Text(state.error!);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
