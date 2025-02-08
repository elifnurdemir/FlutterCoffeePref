import 'package:flutter/material.dart';
import 'package:music_player/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}
 class SandBox extends StatelessWidget {
   const SandBox({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title:  const Text('Scaffold',
             style: TextStyle (color:Colors.white)),
         backgroundColor: Colors.purpleAccent,
       ),
       body: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Container(
             height: 100,
             color: Colors.red,
             child: const Text('one'),
           ),
           Container(
             height: 200,
             color: Colors.green,
             child: const Text('two'),
           ),
           Container(
             height: 300,
             color: Colors.blue,
             child: const Text('three'),
           ),
         ],

       )
     );
   }
 }
 

