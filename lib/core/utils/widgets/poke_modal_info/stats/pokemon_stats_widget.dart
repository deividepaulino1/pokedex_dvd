import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pokedex_dvd/modules/main_module/models/pokemon_model.dart';

class PokemonStatsWidget extends StatefulWidget {
  final PokemonInfo pokemonInfo;

  const PokemonStatsWidget({super.key, required this.pokemonInfo});

  @override
  State<PokemonStatsWidget> createState() => _PokemonStatsWidgetState();
}

class _PokemonStatsWidgetState extends State<PokemonStatsWidget> {
  @override
  Widget build(BuildContext context) {
    getTotalStats() {
      int soma = 0;
      for (var i = 0; i < widget.pokemonInfo.stats!.length; i++) {
        soma += widget.pokemonInfo.stats![i].baseStat!;
      }
      final total = 100 * soma / 600;
      return total;
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          buildTableCell(
            text: 'HP',
            value: widget.pokemonInfo.stats![0].baseStat!,
          ),
          buildTableCell(
            text: 'Attack',
            value: widget.pokemonInfo.stats![1].baseStat!,
          ),
          buildTableCell(
            text: 'Defense',
            value: widget.pokemonInfo.stats![2].baseStat!,
          ),
          buildTableCell(
            text: 'Sp. Atk',
            value: widget.pokemonInfo.stats![3].baseStat!,
          ),
          buildTableCell(
            text: 'Sp. Def',
            value: widget.pokemonInfo.stats![4].baseStat!,
          ),
          buildTableCell(
            text: 'Speed',
            value: widget.pokemonInfo.stats![5].baseStat!,
          ),
          buildTableCell(
            text: 'Total',
            value: getTotalStats().toInt(),
            isTotality: true,
          ),
        ],
      ),
    );
  }

  Widget buildTableCell({
    required String text,
    required int value,
    bool isTotality = false,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
              textAlign: TextAlign.center,
            ),
            LinearPercentIndicator(
                width: 200.00,
                lineHeight: 10.0,
                percent: value / 100,
                leading: Text(
                  value.toString(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                      ),
                  textAlign: TextAlign.center,
                ),
                barRadius: const Radius.circular(10),
                backgroundColor: Colors.transparent,
                progressColor: (isTotality)
                    ? Colors.transparent
                    : (value > 70)
                        ? Colors.indigo.shade800
                        : Colors.red),
          ],
        ),
      ),
    );
  }
}
