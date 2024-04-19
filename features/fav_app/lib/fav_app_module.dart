import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/fav_app_page.dart';

class FavAppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => const FavAppWidget());
  }
}
