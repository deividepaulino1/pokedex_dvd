import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_model.dart';

class PokemonMovesWidget extends StatefulWidget {
  final PokemonInfo pokemonInfo;

  const PokemonMovesWidget({super.key, required this.pokemonInfo});

  @override
  State<PokemonMovesWidget> createState() => _PokemonMovesWidgetState();
}

class _PokemonMovesWidgetState extends State<PokemonMovesWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //list of another attacks
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.pokemonInfo.moves!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  widget.pokemonInfo.moves![index].move!.name!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                trailing: PokeTypeWidget(
                    type: widget.pokemonInfo.types![0].type!.name!),
              );
            },
          ),
        ],
      ),
    );
  }
}
