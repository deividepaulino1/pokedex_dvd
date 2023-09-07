import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/assets/icons/pokedex/pokedex_icons.dart';
import 'package:pokedex_dvd/core/theme/colors/colors.dart';

class PokedexCustomAppBar extends AppBar {
  PokedexCustomAppBar({
    Key? key,
    bool automaticallyImplyLeading = false,
    double toolbarHeight = 100,
    Color color = Colors.white,
  }) : super(
          key: key,
          elevation: 0,
          automaticallyImplyLeading: automaticallyImplyLeading,
          iconTheme: const IconThemeData(color: PokedexColors.greyBase),
          toolbarHeight: toolbarHeight,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Pokedex.pokedexGear),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'lib/core/assets/images/pokemon_logo.png',
                width: 130,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Pokedex.pokedexBell),
            ),
          ],
          backgroundColor: color,
        );
}
