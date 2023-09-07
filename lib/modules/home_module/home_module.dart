import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/main_module/main_module.dart';

import 'presenter/pages/home_page.dart';

class HomeModule extends Module {
  List<Module> get imports => [
        MainModuleX(),
      ];
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
