import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice', 
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 216, 112, 105),
        ),
        body: DicePage(),
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
  
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changedice()
  {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () { 
                changedice();
              },
              child: Image.asset(
                'images/dice$leftdicenumber.png'
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () { 
                changedice();
              },
              child: Image.asset(
                'images/dice$rightdicenumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}