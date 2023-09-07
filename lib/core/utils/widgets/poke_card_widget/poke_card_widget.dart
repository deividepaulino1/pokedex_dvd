import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex_dvd/core/theme/colors/colors.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_modal_info/poke_modal_info.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';

class PokeCardWidget extends StatefulWidget {
  final String imageLink;
  final String name;
  final String pokeIndex;
  final String type1;
  final String? type2;
  const PokeCardWidget({
    super.key,
    required this.imageLink,
    required this.name,
    required this.pokeIndex,
    required this.type1,
    this.type2,
  });

  @override
  State<PokeCardWidget> createState() => _PokeCardWidgetState();
}

class _PokeCardWidgetState extends State<PokeCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController likeController;

  @override
  void initState() {
    likeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    // ..forward()
    // ..repeat();
    super.initState();
  }

  _color(type) {
    switch (type) {
      case 'bug':
        return PokedexColors.greenLigth;
      case 'dark':
        return PokedexColors.pinkDeep;
      case 'electric':
        return Colors.yellow.shade700;
      case 'fairy':
        return Colors.pink.shade400;
      case 'fighting':
        return Colors.red.shade800;
      case 'flying':
        return Colors.blue.shade300;
      case 'ghost':
        return Colors.indigo.shade300;
      case 'grass':
        return PokedexColors.greenMedium;
      case 'ground':
        return Colors.brown.shade700;
      case 'ice':
        return Colors.cyan.shade300;
      case 'poison':
        return Colors.purple;
      case 'psychic':
        return Colors.pink.shade300;
      case 'rock':
        return Colors.brown.shade800;
      case 'steel':
        return Colors.grey.shade600;
      case 'water':
        return PokedexColors.blueLigth;
      case 'fire':
        return PokedexColors.hotPeach;
      case 'dragon':
        return Colors.indigo.shade800;
      case 'normal':
        return Colors.grey.shade400;

      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        //modal bottomsheet
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => const PokeModalInfoWidget(),
        ),
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 120,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'lib/core/assets/svg/pokeball.png',
            ),
            fit: BoxFit.fitHeight,
            alignment: Alignment.bottomRight,
          ),
          color: _color(widget.type1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(
                    '#${widget.pokeIndex}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    //first letter to uppercase
                    widget.name[0].toUpperCase() + widget.name.substring(1),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        PokeTypeWidget(
                          type: widget.type1,
                        ),
                        if (widget.type2 != null)
                          PokeTypeWidget(
                            type: widget.type2!,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  right: 20,
                  bottom: 8.0,
                ),
                child: Image.network(
                  widget.imageLink,
                ),
              ),
              InkWell(
                onTap: () => {
                  likeController.animateTo(0.5),
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 1, top: 1),
                  child: Lottie.asset(
                    'lib/core/assets/animations/like_pokemao.json',
                    controller: likeController,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
