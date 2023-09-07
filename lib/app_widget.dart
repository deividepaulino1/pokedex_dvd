import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/core/theme/themes/light_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    (MediaQuery.sizeOf(context).width >= 750)
        ? SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ])
        : SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
          ]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PokedvDX',
      routeInformationParser: Modular.routeInformationParser,
      theme: ThemeBase.pokedexLigth,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
