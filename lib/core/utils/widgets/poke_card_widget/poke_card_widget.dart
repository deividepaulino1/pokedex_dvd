import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_modal_info/poke_modal_info.dart';
import 'package:pokedex_dvd/core/utils/widgets/poke_type_widget/poke_type_widget.dart';

class PokeCardWidget extends StatefulWidget {
  const PokeCardWidget({super.key});

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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        //modal bottomsheet
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => PokeModalInfoWidget(),
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
          color: Colors.green.shade300,
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
                    '#001',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Bulbasaur',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: const Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: [
                        PokeTypeWidget(
                          type: 'grass',
                        ),
                        PokeTypeWidget(
                          type: 'poison',
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
                child: Image.asset(
                  'lib/core/assets/svg/buba_test.png',
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
