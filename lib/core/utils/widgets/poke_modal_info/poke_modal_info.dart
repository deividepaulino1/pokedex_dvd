import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex_dvd/core/theme/colors/colors.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/atoms/bottom_navigation_bar_atom.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/pokedex_bottom_bar.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_modal_info/about/about_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_modal_info/evolution/pokemon_evolution_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_modal_info/moves/pokemon_moves_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_modal_info/stats/pokemon_stats_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_model.dart';

class PokeModalInfoWidget extends StatefulWidget {
  final PokemonInfo pokemonInfo;
  const PokeModalInfoWidget({super.key, required this.pokemonInfo});

  @override
  State<PokeModalInfoWidget> createState() => _PokeModalInfoWidgetState();
}

class _PokeModalInfoWidgetState extends State<PokeModalInfoWidget>
    with TickerProviderStateMixin {
  late AnimationController likeController;
  late TabController _tabController;

  @override
  void initState() {
    likeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    // ..forward()
    // ..repeat();
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  dispose() {
    likeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        children: [
          _buildHeader(),
          _buildMenu(),
          _buildPageView(),
          PokedexNavigationBar(
              currentIndex: currentIndex.value,
              onTap: (i) {
                Modular.to.pop();
              })
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        ClipPath(
          clipper: RoundedDiagonalPathClipper(),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              gradient: PokedexColors.grassGradient,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Lottie.asset(
                    'lib/core/assets/animations/like_pokemao.json',
                    controller: likeController,
                    height: 50,
                    width: 50,
                    onLoaded: (composition) {
                      likeController
                        ..duration = composition.duration
                        ..forward();
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '#${widget.pokemonInfo.id.toString().padLeft(3, '0')}',
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text(
                        widget.pokemonInfo.name![0].toUpperCase() +
                            widget.pokemonInfo.name!.substring(1),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PokeTypeWidget(
                        type: widget.pokemonInfo.types![0].type!.name!,
                      ),
                      if (widget.pokemonInfo.types!.length > 1)
                        PokeTypeWidget(
                          type: widget.pokemonInfo.types![1].type!.name!,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -1,
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 11,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 20,
          child: Image.asset(
            'lib/core/assets/svg/buba_test.png',
            width: 170,
          ),
        ),
      ],
    );
  }

  Widget _buildMenu() {
    return Container(
      color: Colors.white,
      child: TabBar(
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.black,
        unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        indicatorSize: TabBarIndicatorSize.label,
        controller: _tabController,
        onTap: (index) {
          _tabController.animateTo(index);
        },
        tabs: const [
          Tab(text: 'About'),
          Tab(text: 'Stats'),
          Tab(text: 'Evolution'),
          Tab(text: 'Moves'),
        ],
      ),
    );
  }

  Widget _buildPageView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.white,
            child: AboutPokemonWidget(
              pokemonInfo: widget.pokemonInfo,
            ),
          ),
          Container(
            color: Colors.white,
            child: PokemonStatsWidget(
              pokemonInfo: widget.pokemonInfo,
            ),
          ),
          Container(
            color: Colors.white,
            child: PokemonEvolutionWidget(
              pokemonInfo: widget.pokemonInfo,
            ),
          ),
          Container(
            color: Colors.white,
            child: PokemonMovesWidget(
              pokemonInfo: widget.pokemonInfo,
            ),
          ),
        ],
      ),
    );
  }
}
