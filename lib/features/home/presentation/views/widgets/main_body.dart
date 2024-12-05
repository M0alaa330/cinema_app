import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/home/presentation/views/home_screen.dart';
import 'package:cinema_app/features/saved/presentation/views/saved_screen.dart';
import 'package:cinema_app/features/search/presentation/views/search_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class Mainbody extends StatefulWidget {
  const Mainbody({
    super.key,
  });

  @override
  State<Mainbody> createState() => _MainState();
}

class _MainState extends State<Mainbody> {
  int initalindex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    SearchScreen(),
    const SavedScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff05041f),
        bottomNavigationBar: FlashyTabBar(
            backgroundColor: const Color(0xff1d1e30),
            selectedIndex: initalindex,
            items: [
              FlashyTabBarItem(
                  activeColor: Colors.white,
                  icon: const Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: textStyle(Colors.white, 20, FontWeight.bold),
                  )),
              FlashyTabBarItem(
                  activeColor: Colors.white,
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    "Search",
                    style: textStyle(
                      Colors.white,
                      20,
                      FontWeight.bold,
                    ),
                  )),
              FlashyTabBarItem(
                  activeColor: Colors.white,
                  icon: const Icon(
                    Icons.favorite_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    "Saved",
                    style: textStyle(Colors.white, 20, FontWeight.bold),
                  ))
            ],
            onItemSelected: (int value) {
              initalindex = value;
              setState(() {});
            }),
        body: pages[initalindex]);
  }
}
