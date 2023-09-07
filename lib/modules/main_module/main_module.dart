import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/main_module/presenter/pages/main_page.dart';

class MainModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const MainPage(),
    ),
  ];
}
