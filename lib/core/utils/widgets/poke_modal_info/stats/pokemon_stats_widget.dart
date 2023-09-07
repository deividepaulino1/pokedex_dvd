import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PokemonStatsWidget extends StatefulWidget {
  const PokemonStatsWidget({super.key});

  @override
  State<PokemonStatsWidget> createState() => _PokemonStatsWidgetState();
}

class _PokemonStatsWidgetState extends State<PokemonStatsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          buildTableCell(
            text: 'HP',
            value: 35,
          ),
          buildTableCell(
            text: 'Attack',
            value: 55,
          ),
          buildTableCell(
            text: 'Defense',
            value: 40,
          ),
          buildTableCell(
            text: 'Sp. Atk',
            value: 50,
          ),
          buildTableCell(
            text: 'Sp. Def',
            value: 50,
          ),
          buildTableCell(
            text: 'Speed',
            value: 90,
          ),
          buildTableCell(
            text: 'Total',
            value: 90,
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
