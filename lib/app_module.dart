import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/favourites_module/favourites_module.dart';
import 'package:pokedex_dvd/modules/home_module/home_module.dart';
import 'package:pokedex_dvd/modules/main_module/main_module.dart';
import 'package:pokedex_dvd/modules/profile_module/profile_module.dart';
import 'package:pokedex_dvd/modules/splash_module/splash_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        // CoreModule(),
      ];

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: SplashModule(),
        ),
        ModuleRoute(
          '/main/',
          module: MainModule(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 600),
        ),
        ModuleRoute(
          '/home/',
          module: HomeModule(),
        ),
        ModuleRoute(
          '/favorites/',
          module: FavoritesModule(),
        ),
        ModuleRoute(
          '/profile/',
          module: ProfileModule(),
        ),
      ];
}
