import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_card_widget/poke_card_widget.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
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
