import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presenter.dart';

class ArchSearchWidget extends StatefulWidget {
  final ArchSearchController controller;
  const ArchSearchWidget({super.key, required this.controller});

  @override
  State<ArchSearchWidget> createState() => _ArchSearchWidgetState();
}

class _ArchSearchWidgetState extends State<ArchSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Searcher -  test'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  controller.getUsers(value);
                },
                decoration: const InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ChangeNotifierProvider(
                  create: (context) => controller,
                  child: Consumer<ArchSearchController>(
                    builder: (context, state, child) {
                      if (state.state is StartState) {
                        return const Center(child: Text('Start'));
                      }
                      if (state.state is LoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state.state is ErrorState) {
                        return Center(
                          child:
                              Text((state.state as ErrorState).error.message),
                        );
                      }
                      final users = (state.state as SuccessState).list;
                      return ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return ListTile(
                            title: Text(user.name),
                            subtitle: Text(user.url),
                          );
                        },
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }

  ArchSearchController get controller => widget.controller;
}
