import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_card_widget/poke_card_widget.dart';

import '../../../main_module/presenter/atoms/main_atoms.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final pokemonAtom = Modular.get<MainAtoms>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
          child: Text(
            'Meus Pokémons favoritos',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: RxBuilder(
            builder: (_) => ListView.builder(
              itemCount: pokemonAtom.pokemonList.value.length,
              itemBuilder: (context, index) {
                return PokeCardWidget(
                    pokemonInfo: pokemonAtom.pokemonList.value[index],
                    name: pokemonAtom.pokemonList.value[index].name!,
                    type1: pokemonAtom
                        .pokemonList.value[index].types![0].type!.name!,
                    type2:
                        (pokemonAtom.pokemonList.value[index].types!.length > 1)
                            ? pokemonAtom
                                .pokemonList.value[index].types![1].type!.name!
                            : null,
                    pokeIndex: pokemonAtom.pokemonList.value[index].id!
                        .toString()
                        .padLeft(3, '0'),
                    imageLink: pokemonAtom.pokemonList.value[index].sprites!
                        .other!.officialArtwork!.frontDefault!);
              },
            ),
          ),
        ),
      ],
    );
  }
}
