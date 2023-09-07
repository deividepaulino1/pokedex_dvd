import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/main_module/controllers/data/pokemon_service.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/atoms/main_atoms.dart';
import 'dart:developer' as d;

import 'package:pokedex_dvd/modules/main_module/presenter/states/main_states.dart';

class MainReducer extends Reducer {
  final pokemonAtom = Modular.get<MainAtoms>();

  MainReducer() {
    on(() => [pokemonAtom.fetchPokemonListAction], _fetchPokemons);
  }

  final pokemonService = Modular.get<PokemonService>();

  void _fetchPokemons() async {
    pokemonAtom.mainState.setValue(const MainLoadingState());
    pokemonAtom.pokemonList.value.clear();
    final data = await pokemonService.fetchPokemonGenInfo('1');
    pokemonAtom.pokemonList.value.add(data);

    final data2 = await pokemonService.fetchPokemonGenInfo('4');
    pokemonAtom.pokemonList.value.add(data2);

    final data3 = await pokemonService.fetchPokemonGenInfo('7');
    pokemonAtom.pokemonList.value.add(data3);

    final data4 = await pokemonService.fetchPokemonGenInfo('10');
    pokemonAtom.pokemonList.value.add(data4);

    if (pokemonAtom.pokemonList.value.isNotEmpty) {
      pokemonAtom.mainState.setValue(const MainSuccessState());
    } else {
      pokemonAtom.mainState
          .setValue(const MainErrorState('Todos os pokémons fugiram'));
    }
  }
}
