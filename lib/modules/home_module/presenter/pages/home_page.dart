import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/app_bar/pokedex_app_bar_widget.dart';
import 'package:pokedex_dvd/core/utils/widgets/bottom_navigation_bar/pokedex_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PokedexCustomAppBar(),
      bottomNavigationBar: PokedexNavigationBar(
        currentIndex: 1,
        onTap: (v) {},
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
            child: Text(
              'Qual Pokémon você está procurando?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            height: 500,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
