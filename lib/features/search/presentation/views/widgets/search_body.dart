import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/core/utlies/textfield.dart';
import 'package:cinema_app/features/home/data/model/trending_model.dart';
import 'package:cinema_app/features/search/presentation/controller/cubit/search_cubit.dart';
import 'package:cinema_app/features/search/presentation/controller/cubit/search_state.dart';
import 'package:cinema_app/features/search/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBody extends StatelessWidget {
  SearchBody({super.key, this.data});
  final TextEditingController search = TextEditingController();
  final TrendingModel? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05041f),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Textfield(
                onsubmitted: (value) {
                  context.read<SearchCubit>().fetchsearch(movie: value);
                },
                controller: search,
                isshow: false,
                labeltext: "Search",
                icon: Icons.search_rounded,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Search Result :",
                style: textStyle(Colors.white, 20, FontWeight.bold),
              ),
            ),
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is LoadingstateSearch) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              } else if (state is ErrorstateSearch) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      'Error: ${state.error ?? "Unknown error"}',
                      style: textStyle(Colors.red, 18, FontWeight.bold),
                    ),
                  ),
                );
              } else if (state is LoadedstateSearch) {
                if (state.movie?.isEmpty ?? true) {
                  return SliverFillRemaining(
                    child: Center(
                      child: Text(
                        "No results found.",
                        style: textStyle(Colors.white, 18, FontWeight.bold),
                      ),
                    ),
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return CustomContainer(data: state.movie![index]);
                    },
                    childCount: state.movie?.length ?? 0,
                  ),
                );
              } else {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      "Start Searching.....",
                      style: textStyle(Colors.white, 20, FontWeight.bold),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
