import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('I am Rich',
            style: TextStyle(
              color: Colors.white),
              ),
            ),
          backgroundColor: const Color.fromARGB(255, 66, 91, 134),
        ),
        backgroundColor: Color.fromARGB(255, 147, 159, 178),
        body: Center(
          child: Image(
          image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}