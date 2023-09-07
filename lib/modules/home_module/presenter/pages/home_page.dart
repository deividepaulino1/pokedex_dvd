import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_card_widget/poke_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
          child: Text(
            'Qual Pokémon você está procurando?',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return const PokeCardWidget();
            },
          ),
        ),
      ],
    );
  }
}
