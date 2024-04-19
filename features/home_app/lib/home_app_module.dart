import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/home_app_page.dart';

class HomeAppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => const HomeAppWidget());
  }
}
