import 'package:flutter_modular/flutter_modular.dart';
import 'package:pscomidas/app/modules/home/home_page.dart';
import '../home/home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
