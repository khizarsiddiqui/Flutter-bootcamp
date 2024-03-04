import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(child: Text('Ask Me Anything', style: TextStyle(color: Colors.white),)),
          ),
        body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballchange = 1;

  void ballchanger (){
    setState(() {
      ballchange = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          ballchanger();
        },
        child: Image.asset('images/ball$ballchange.png'),
      ),
    );
  }
}