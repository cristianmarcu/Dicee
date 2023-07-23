import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeTheDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  Expanded rightDice() {
    return Expanded(
      child: TextButton(
        onPressed: () {
          changeTheDice();
        },
        child: Image.asset('images/dice$rightDiceNumber.png'),
      ),
    );
  }

  Expanded leftDice() {
    return Expanded(
      child: TextButton(
        onPressed: () {
          changeTheDice();
        },
        child: Image.asset('images/dice$leftDiceNumber.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          rightDice(),
          leftDice(),
        ],
      ),
    );
  }
}
