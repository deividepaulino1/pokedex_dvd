import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_dvd/modules/profile_module/presenter/pages/profile_page.dart';

class ProfileModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ProfilePage()),
  ];
}
