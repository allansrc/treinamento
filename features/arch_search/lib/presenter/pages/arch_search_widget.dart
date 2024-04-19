import 'package:flutter/material.dart';

class ArchSearchWidget extends StatefulWidget {
  const ArchSearchWidget({super.key});

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
      body: const Center(
        child: Placeholder(),
      ),
    );
  }
}
