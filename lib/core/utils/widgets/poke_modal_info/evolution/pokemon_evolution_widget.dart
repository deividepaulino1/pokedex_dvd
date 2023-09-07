import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';

class PokemonEvolutionWidget extends StatefulWidget {
  const PokemonEvolutionWidget({super.key});

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
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'lib/core/assets/svg/buba_test.png',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Bubassaur #$index',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const PokeTypeWidget(type: 'grass'),
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
