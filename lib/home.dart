import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int _dice1 = 1;
  int _dice2 = 1;
  final Random _random = Random();

  void _rollDice() {
    setState(() {
      _dice1 = _random.nextInt(6) + 1;
      _dice2 = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //changing color
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click To Roll',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset('images/d$_dice1.svg',
                    width: 100, height: 100),
                SizedBox(width: 20),
                SvgPicture.asset('images/d$_dice2.svg',
                    width: 100, height: 100),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Sum is ${_dice1 + _dice2}',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _rollDice,
              child: Text(
                'Roll',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
