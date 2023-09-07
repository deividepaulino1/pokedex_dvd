import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/favourites_module/presenter/pages/favorites_page.dart';

class FavoritesModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const FavoritesPage()),
  ];
}
