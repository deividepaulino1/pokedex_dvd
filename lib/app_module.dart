import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/home_module/home_module.dart';
import 'package:pokedex_dvd/modules/splash_module/splash_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        // CoreModule(),
      ];

  @override
  List<Bind> get binds => [
        // Bind((i) => DjScaffoldMessage()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: SplashModule(),
        ),
        ModuleRoute(
          '/home/',
          module: HomeModule(),
        ),
      ];
}
