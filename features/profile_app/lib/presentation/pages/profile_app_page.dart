import 'package:flutter/material.dart';

class ProfileAppWidget extends StatefulWidget {
  const ProfileAppWidget({super.key});

  @override
  State<ProfileAppWidget> createState() => _ProfileAppWidgetState();
}

class _ProfileAppWidgetState extends State<ProfileAppWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile APP'),
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
