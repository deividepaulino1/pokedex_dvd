import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex_dvd/core/utils/widgets/app_bar/pokedex_header_desktop.dart';
import 'package:pokedex_dvd/core/utils/widgets/app_bar/pokedex_app_bar_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/atoms/bottom_navigation_bar_atom.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/pokedex_bottom_bar.dart';
import 'package:pokedex_dvd/modules/favourites_module/presenter/pages/favorites_page.dart';
import 'package:pokedex_dvd/modules/home_module/presenter/pages/home_page.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/atoms/main_atoms.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/states/main_states.dart';
import 'package:pokedex_dvd/modules/profile_module/presenter/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = PageController();
  final pokemonAtom = Modular.get<MainAtoms>();

  @override
  void initState() {
    super.initState();
    pokemonAtom.fetchPokemonListAction();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => pokemonAtom.mainState.value);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: (MediaQuery.sizeOf(context).width < 600)
          ? PokedexCustomAppBar()
          : null,
      bottomNavigationBar: (MediaQuery.sizeOf(context).width > 600)
          ? const SizedBox.shrink()
          : RxBuilder(
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
      body: switch (state) {
        MainErrorState _ => _buildFail(state.message),
        MainLoadingState _ => _buildLoading(),
        MainSuccessState _ => _buildSucess(),
      },
    );
  }

  Widget _buildFail(state) {
    return Center(
      child: Column(
        children: [
          Text(state),
          ElevatedButton(
            onPressed: () => pokemonAtom.fetchPokemonListAction(),
            child: const Text('Capturar novamente'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: Lottie.asset(
        'lib/core/assets/animations/pokeball_loading.json',
        width: 50,
        height: 50,
      ),
    );
  }

  Widget _buildSucess() {
    return Column(
      children: [
        if (MediaQuery.sizeOf(context).width > 600)
          PokedexHeaderDesktop(
            pageController: pageController,
          ),
        Expanded(
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomePage(),
              FavoritesPage(),
              ProfilePage(),
            ],
          ),
        ),
      ],
    );
  }
}
