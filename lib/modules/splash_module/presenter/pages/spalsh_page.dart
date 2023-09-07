import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex_dvd/core/theme/colors/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Modular.to.pushReplacementNamed('/main/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PokedexColors.customBD,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'lib/core/assets/animations/pokeball_loading.json',
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 20),
            // Text(
            //   'Made with love by: Deivide Paulino',
            //   style: Theme.of(context).textTheme.displaySmall!.copyWith(
            //         color: PokedexColors.greyWhite,
            //       ),
            // ),
            const SizedBox(height: 20),
            Text(
              'É necessário conexão com a internet...\nSe você estiver offline a pokebola vai quebrar!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: PokedexColors.hotPeach,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
