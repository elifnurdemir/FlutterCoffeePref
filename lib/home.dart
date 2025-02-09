import 'package:flutter/material.dart';
import 'package:music_player/coffee_prefs.dart';
import 'package:music_player/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KAHVEHANE', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: StyledBodyText('Kahvenizi nasıl alırdınız?')
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(
              child: Image.asset ('assets/img/bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,)
          )
        ],
      ),
    );
  }
}