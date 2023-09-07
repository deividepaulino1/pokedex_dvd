import 'package:flutter/widgets.dart';

class Pokedex {
  Pokedex._();

  static const _pokedex = 'Pokedex';
  static const String? _pokedexPackage = null;

  static const IconData pokedexGear =
      IconData(0xe800, fontFamily: _pokedex, fontPackage: _pokedexPackage);
  static const IconData pokedexBell =
      IconData(0xe801, fontFamily: _pokedex, fontPackage: _pokedexPackage);
  static const IconData pokedexPokeball =
      IconData(0xe802, fontFamily: _pokedex, fontPackage: _pokedexPackage);
  static const IconData pokedexHouse =
      IconData(0xe803, fontFamily: _pokedex, fontPackage: _pokedexPackage);
  static const IconData pokedexPerson =
      IconData(0xe804, fontFamily: _pokedex, fontPackage: _pokedexPackage);
}
