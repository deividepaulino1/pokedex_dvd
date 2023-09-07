// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/assets/icons/pokedex/pokedex_icons.dart';

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
      selectedItemColor: Colors.red, // Cor do ícone ativo
      unselectedItemColor: Colors.black, // Cor do ícone inativo
      backgroundColor: Colors.white, // Cor de fundo da barra
    );
  }
}
