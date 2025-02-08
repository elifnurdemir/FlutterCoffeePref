import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    print('inc strength by 1');
  }
 void increaseSugars(){
    print('inc sugars by 1');
 }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
           const Text('Strength: '),
           const Text('3'),
            Image.asset('assets/img/dog.jpeg',
            width: 25,
              color: Colors.red[100],
              colorBlendMode: BlendMode.multiply,
            ),
          const Expanded(child: SizedBox()),
          FilledButton(
              onPressed:increaseStrength,
              style: FilledButton.styleFrom(
                backgroundColor:Colors.brown ,
                foregroundColor:Colors.white ,
              ),
              child: const Text('+'))
          ],
        ),
        Row(
          children: [
           const Text('Sugars: '),
            const Text('3'),
            Image.asset('assets/img/mini.jpg',
            width: 25,
              color: Colors.red[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
                onPressed:increaseSugars,
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
