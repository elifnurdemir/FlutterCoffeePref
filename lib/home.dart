import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('elifin appbarı'),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: const Text('Helloo'),
    );
  }
}