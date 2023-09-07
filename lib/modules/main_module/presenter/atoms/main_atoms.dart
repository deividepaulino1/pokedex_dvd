import 'package:asp/asp.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_model.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/states/main_states.dart';

class MainAtoms {
  final mainState = Atom<MainState>(const MainLoadingState());
  final pokemonList = Atom<List<PokemonInfo>>([]);

//actions
  final fetchPokemonListAction = Atom.action();

  void dispose() {
    pokemonList.dispose();
    fetchPokemonListAction.dispose();
  }
}
