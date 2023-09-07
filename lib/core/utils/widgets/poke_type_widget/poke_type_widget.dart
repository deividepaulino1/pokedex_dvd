import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokeTypeWidget extends StatefulWidget {
  final String type;
  const PokeTypeWidget({super.key, required this.type});

  @override
  State<PokeTypeWidget> createState() => _PokeTypeWidgetState();
}

class _PokeTypeWidgetState extends State<PokeTypeWidget> {
  _color() {
    switch (widget.type) {
      case 'bug':
        return Colors.green.shade800;
      case 'dark':
        return Colors.grey.shade800;
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
        return Colors.green.shade800;
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
        return Colors.blue.shade800;
      case 'fire':
        return Colors.red.shade800;
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
    return Container(
      height: 20,
      width: 55,
      decoration: BoxDecoration(
        color: _color(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'lib/core/assets/svg/categories/${widget.type}.svg',
              height: 10,
            ),
            Text(
              widget.type[0].toUpperCase() + widget.type.substring(1),
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.white,
                    fontSize: 10,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
