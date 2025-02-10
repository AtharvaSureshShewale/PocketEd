import 'package:flutter/material.dart';
import '../navbar/destination.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key, required this.destination});

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${destination.title} RootPage'),
        backgroundColor: destination.color,
      ),
      backgroundColor: destination.color[50],
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: destination.color),
          onPressed: () => Navigator.pushNamed(context, '/list'),
          child: const Text('Go to List Page'),
        ),
      ),
    );
  }
}
