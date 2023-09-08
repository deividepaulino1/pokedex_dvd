import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_card_widget/poke_card_widget.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/atoms/main_atoms.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pokemonAtom = Modular.get<MainAtoms>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
          child: Text(
            'Qual Pokémon você está procurando?',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: (MediaQuery.sizeOf(context).width > 600)
              ? MediaQuery.of(context).size.height * 0.6
              : MediaQuery.of(context).size.height * 0.5,
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: pokemonAtom.pokemonList.value.map((pokemonInfo) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth:
                          (MediaQuery.sizeOf(context).width < 720) ? 600 : 360),
                  child: PokeCardWidget(
                    pokemonInfo: pokemonInfo,
                    name: pokemonInfo.name!,
                    type1: pokemonInfo.types![0].type!.name!,
                    type2: (pokemonInfo.types!.length > 1)
                        ? pokemonInfo.types![1].type!.name!
                        : null,
                    pokeIndex: pokemonInfo.id!.toString().padLeft(3, '0'),
                    imageLink: pokemonInfo
                        .sprites!.other!.officialArtwork!.frontDefault!,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
