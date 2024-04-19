import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeAppWidget extends StatefulWidget {
  const HomeAppWidget({super.key});

  @override
  State<HomeAppWidget> createState() => _HomeAppWidgetState();
}

class _HomeAppWidgetState extends State<HomeAppWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home APP'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/fav/');
              },
              child: const Text('Go TO Fav'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/profile/');
              },
              child: const Text('Go TO Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/searcher/');
              },
              child: const Text('Go TO Searcher'),
            ),
          ],
        ),
      ),
    );
  }
}
