import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import '../presenter.dart';

class ArchSearchController extends ChangeNotifier {
  final GetUsersSearchUseCase usecase;

  ArchSearchController(this.usecase);

  SearchState state = const StartState();

  Future<void> getUsers(String textSearch) async {
    if (textSearch.isEmpty) {
      state = const StartState();
      notifyListeners();
      return;
    }
    state = const LoadingState();
    final result = await usecase.getUsers(textSearch);
    final newState = result.fold(
      (failure) => ErrorState(failure),
      (users) => SuccessState(users),
    );
    state = newState;
    notifyListeners();
  }
}
