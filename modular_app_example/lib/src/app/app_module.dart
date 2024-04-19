import 'package:arch_search/arch_search.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fav_app/fav_app.dart';
import 'package:home_app/home_app.dart';
import 'package:profile_app/profile_app.dart';

class AppModule extends Module {
  @override
  List<Module> imports = [];

  @override
  void binds(i) {
    // TDB
  }

  @override
  void routes(r) {
    // Rota inicial "/" precisa ser definida para que o
    // ModularApp funcione corretamente
    r.module('/', module: HomeAppModule());
    r.module('/profile', module: ProfileAppModule());
    r.module('/fav', module: FavAppModule());
    r.module('/searcher', module: ArchSearchModule());
  }
}
