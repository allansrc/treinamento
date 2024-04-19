import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/arch_search_widget.dart';

class ArchSearchModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (_) => const ArchSearchWidget());
  }
}
