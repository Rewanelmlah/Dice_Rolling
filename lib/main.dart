import 'package:flutter/material.dart';
import 'package:iti2/home.dart';

void main() {
  runApp(const diceroller());
}

class diceroller extends StatelessWidget {
  const  diceroller ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceRoller(),
    );
  }
}
