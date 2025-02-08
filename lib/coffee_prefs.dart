import 'package:flutter/material.dart';

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
            const Text('Sertlik: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee.jpg',
                width: 25,
                color: Colors.red[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
                onPressed: increaseStrength,
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                child: const Text('+'))
          ],
        ),
        Row(
          children: [
            const Text('Tatlılık: '),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/mini.jpg',
                width: 25,
                color: Colors.red[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
                onPressed: increaseSugars,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                child: const Text('+'))
          ],
        ),
      ],
    );
  }
}
