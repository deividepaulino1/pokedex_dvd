import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/spalsh_page.dart';

class SplashModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SplashPage()),
  ];
}
