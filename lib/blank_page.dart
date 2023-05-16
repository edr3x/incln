import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BlankPage"),
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
