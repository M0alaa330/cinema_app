import 'package:cinema_app/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}
//   BlocProvider(
            // create: (context) =>
            //     Trendingcubit()..getTrending(endpoint: "movie/upcoming"))