import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data/data.dart';
import 'domain/domain.dart';
import 'presenter/presenter.dart';

class ArchSearchModule extends Module {
  @override
  void binds(i) {
    // Data layer
    i.addInstance<Dio>(Dio());
    i.add<GetUsersSearchRepository>(GetUsersSearchRepositoryImpl.new);
    i.add<GetUsersSearchDataSource>(GetUsersSearchDataSourceImpl.new);

    // Domain layer
    i.add<GetUsersSearchUseCase>(GetUsersSearchUseCaseImpl.new);
    // Presenter layer
    i.add<ArchSearchController>(ArchSearchController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => ArchSearchWidget(
        controller: Modular.get<ArchSearchController>(),
      ),
    );
  }
}
