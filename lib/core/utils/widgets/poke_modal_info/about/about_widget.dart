import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';

class AboutPokemonWidget extends StatefulWidget {
  const AboutPokemonWidget({super.key});

  @override
  State<AboutPokemonWidget> createState() => _AboutPokemonWidgetState();
}

class _AboutPokemonWidgetState extends State<AboutPokemonWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies aliquam, nisl nisl lacinia nunc, quis aliquet'),
          ),
          //table with 3 rows and 3 columns

          Table(
            children: [
              TableRow(
                children: [
                  buildTableCell(text: 'Heigth', isHeader: true),
                  buildTableCell(text: 'Weigth', isHeader: true),
                  buildTableCell(text: 'Gender', isHeader: true),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: ' 0,6m', isHeigth: true),
                  buildTableCell(text: ' 8.5kg', isWeigth: true),
                  buildTableCell(text: ' Male', isGender: true),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: 'Category', isHeader: true),
                  buildTableCell(text: 'Abilities', isHeader: true),
                  buildTableCell(text: ''),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: 'Lizard'),
                  buildTableCell(text: 'Blaze'),
                  buildTableCell(text: ''),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: 'Weakenes', isHeader: true),
                  buildTableCell(text: ''),
                  buildTableCell(text: ''),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: 'grass', isWeakenes: true),
                  buildTableCell(text: 'poison', isWeakenes: true),
                  buildTableCell(text: ''),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: 'Strenghts', isHeader: true),
                  buildTableCell(text: ''),
                  buildTableCell(text: ''),
                ],
              ),
              TableRow(
                children: [
                  buildTableCell(text: 'ice', isWeakenes: true),
                  buildTableCell(text: 'fairy', isWeakenes: true),
                  buildTableCell(text: 'grass', isWeakenes: true),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTableCell({
    required String text,
    bool isHeader = false,
    bool isHeigth = false,
    bool isWeigth = false,
    bool isGender = false,
    bool isWeakenes = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isHeigth)
            SvgPicture.asset(
              'lib/core/assets/svg/stats/heigth.svg',
              // height: 14,
              // width: 14,
            ),
          if (isWeigth)
            SvgPicture.asset(
              'lib/core/assets/svg/stats/weigth.svg',
              // height: 14,
              // width: 14,
            ),
          if (isGender)
            SvgPicture.asset(
              'lib/core/assets/svg/stats/gender.svg',
            ),
          if (isWeakenes)
            PokeTypeWidget(
              type: text,
            ),
          if (!isWeakenes)
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontWeight:
                        (isHeader) ? FontWeight.bold : FontWeight.normal,
                  ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}