import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/main_module/controllers/data/pokemon_service.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/atoms/main_atoms.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/pages/main_page.dart';

import 'presenter/reducer/main_reducer.dart';

class MainModuleX extends Module {
  final List<Bind> binds = [
    Bind.singleton<MainReducer>(
      (i) => MainReducer(),
      onDispose: (reducer) => reducer.dispose(),
      export: true,
    ),
    Bind.singleton<MainAtoms>(
      (i) => MainAtoms(),
      onDispose: (reducer) => reducer.dispose(),
      export: true,
    ),
    Bind(
      (i) => PokemonService(),
      export: true,
    ),
  ];
}

class MainModule extends Module {
  List<Module> get imports => [
        MainModuleX(),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const MainPage(),
    ),
  ];
}
