import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/profile_app_page.dart';

class ProfileAppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => const ProfileAppWidget());
  }
}
