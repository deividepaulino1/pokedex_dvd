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

  //Nao achei endpoint pra buscar lista na api que estou consumido, por isso fiz
  //essa "workaround" vulgo gambiarra
  // hehe

  void _fetchPokemons() async {
    pokemonAtom.mainState.setValue(const MainLoadingState());
    pokemonAtom.pokemonList.value.clear();

    for (var i = 1; i <= 151; i += 3) {
      try {
        final response = await pokemonService.fetchPokemonGenInfo('$i');
        pokemonAtom.pokemonList.value.add(response);
      } catch (e) {
        d.log('Ops... um pokémon escapou!');
      }
    }

    if (pokemonAtom.pokemonList.value.isNotEmpty) {
      pokemonAtom.mainState.setValue(const MainSuccessState());
    } else {
      pokemonAtom.mainState
          .setValue(const MainErrorState('Todos os pokémons fugiram'));
    }
  }
}
