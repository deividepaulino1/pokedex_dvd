import 'package:flutter/material.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';

class PokemonMovesWidget extends StatefulWidget {
  const PokemonMovesWidget({super.key});

  @override
  State<PokemonMovesWidget> createState() => _PokemonMovesWidgetState();
}

class _PokemonMovesWidgetState extends State<PokemonMovesWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Tackle',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            trailing: const PokeTypeWidget(type: 'grass'),
          ),
          //underline
          const Divider(
            indent: 20,
            endIndent: 20,
            color: Colors.grey,
            height: 1,
            thickness: 1,
          ),
          //list of another attacks
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  'Tackle',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                trailing: const PokeTypeWidget(type: 'grass'),
              );
            },
          ),
        ],
      ),
    );
  }
}
