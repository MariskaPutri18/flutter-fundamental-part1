// lib/basic_widgets/fab_widget.dart
import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Floating Action Button'),
          backgroundColor: Colors.pink,
        ),
        // Widget Floating Action Button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('FAB Ditekan! 👍')),
            );
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
        body: const Center(
          child: Text('Tampilan dengan FAB'),
        ),
      ),
    );
  }
}