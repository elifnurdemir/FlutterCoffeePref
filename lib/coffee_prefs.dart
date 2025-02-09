import 'package:flutter/material.dart';
import 'package:music_player/styled_body_text.dart';
import 'package:music_player/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText('Sertlik: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee.jpg',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text('+',))

          ],
        ),
        Row(
          children: [
            const StyledBodyText('Tatlılık: '),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/mini.jpg',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseSugars, child: const Text('+'))
          ],
        ),
      ],
    );
  }
}
