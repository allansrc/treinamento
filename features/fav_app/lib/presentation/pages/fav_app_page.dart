import 'package:flutter/material.dart';

class FavAppWidget extends StatefulWidget {
  const FavAppWidget({super.key});

  @override
  State<FavAppWidget> createState() => _FavAppWidgetState();
}

class _FavAppWidgetState extends State<FavAppWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fav APP'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go TO'),
            )
          ],
        ),
      ),
    );
  }
}
