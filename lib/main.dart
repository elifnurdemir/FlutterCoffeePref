import 'package:flutter/material.dart';
import 'package:music_player/home.dart';

void main() {
  runApp(MaterialApp(
    home: SandBox()
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
       body:Column(children: [],),

     );
   }
 }
 

