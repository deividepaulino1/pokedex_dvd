import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/assets/icons/pokedex/pokedex_icons.dart';
import 'package:pokedex_dvd/core/theme/colors/colors.dart';

class PokedexHeaderDesktop extends StatefulWidget {
  final PageController pageController;
  const PokedexHeaderDesktop({super.key, required this.pageController});

  @override
  State<PokedexHeaderDesktop> createState() => _PokedexHeaderDesktopState();
}

class _PokedexHeaderDesktopState extends State<PokedexHeaderDesktop> {
  final activeIndex = Atom<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'lib/core/assets/images/pokemon_logo.png',
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          child: Row(
            children: [
              _buildButton(0, 'Home', Pokedex.pokedexHouse),
              _buildButton(
                1,
                'Favoritos',
                Pokedex.pokedexPokeball,
              ),
              _buildButton(
                2,
                'Perfil',
                Pokedex.pokedexPerson,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Pokedex.pokedexBell,
                  color: PokedexColors.greyBase,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Pokedex.pokedexGear,
                  color: PokedexColors.greyBase,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildButton(
    int buttonIndex,
    String buttonName,
    dynamic icon,
  ) {
    final active = Atom<bool>(buttonIndex == activeIndex.value);
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              activeIndex.setValue(buttonIndex);
              widget.pageController.animateToPage(
                buttonIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
              setState(() {});
            },
            child: Row(
              children: [
                Icon(
                  icon,
                  color: (active.value)
                      ? PokedexColors.hotRed
                      : PokedexColors.greyBase,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  buttonName,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
