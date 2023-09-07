// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/assets/icons/pokedex/pokedex_icons.dart';
import 'package:pokedex_dvd/core/theme/colors/colors.dart';

class PokedexNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  PokedexNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Pokedex.pokedexHouse,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Pokedex.pokedexPokeball),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Pokedex.pokedexPerson),
          label: 'Perfil',
        ),
      ],
      onTap: onTap,
      selectedItemColor: PokedexColors.hotRed,
      selectedIconTheme: const IconThemeData(
        size: 26,
      ),
      selectedFontSize: 13,
      unselectedFontSize: 12,
      unselectedItemColor: PokedexColors.customBD,
      backgroundColor: Colors.white,
    );
  }
}
