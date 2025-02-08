import 'package:flutter/material.dart';
import 'package:music_player/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('elifin appbarı', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.red[300],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red[200],
            padding: const EdgeInsets.all(20),
            child: const Text('ay oldu mu acaba?!'),
          ),
          Container(
            color: Colors.red[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),

        ],
      ),
    );
  }
}