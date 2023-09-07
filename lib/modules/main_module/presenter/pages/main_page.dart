import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/app_bar/pokedex_app_bar_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/atoms/bottom_navigation_bar_atom.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/pokedex_bottom_bar.dart';
import 'package:pokedex_dvd/modules/favourites_module/presenter/pages/favorites_page.dart';
import 'package:pokedex_dvd/modules/home_module/presenter/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PokedexCustomAppBar(),
        bottomNavigationBar: RxBuilder(
          builder: (_) => PokedexNavigationBar(
            currentIndex: currentIndex.value,
            onTap: (i) {
              currentIndex.value = i;
              pageController.animateToPage(i,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut);
            },
          ),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomePage(),
            FavoritesPage(),
          ],
        ));
  }
}
