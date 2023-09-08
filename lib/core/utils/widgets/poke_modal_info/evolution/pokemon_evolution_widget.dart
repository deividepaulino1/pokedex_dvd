import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_model.dart';

class PokemonEvolutionWidget extends StatefulWidget {
  final PokemonInfo pokemonInfo;

  const PokemonEvolutionWidget({super.key, required this.pokemonInfo});

  @override
  State<PokemonEvolutionWidget> createState() => _PokemonEvolutionWidgetState();
}

class _PokemonEvolutionWidgetState extends State<PokemonEvolutionWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            const SizedBox(height: 50),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              children: List.generate(
                3,
                (index) => Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: (index == 0)
                          ? CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(widget
                                  .pokemonInfo
                                  .sprites!
                                  .other!
                                  .officialArtwork!
                                  .frontDefault!),
                            )
                          : const CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                  'lib/core/assets/images/find_pokemon.png'),
                            ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      (index == 0) ? widget.pokemonInfo.name! : 'Desconhecido',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    (index == 0)
                        ? PokeTypeWidget(
                            type: widget.pokemonInfo.types!.first.type!.name!)
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Positioned(
          top: 160,
          child: Row(
            children: [
              Icon(
                Icons.trending_flat,
                color: Colors.grey,
                size: 20,
              ),
              SizedBox(width: 100),
              Icon(
                Icons.trending_flat,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
