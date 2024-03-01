import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('I am Poor',
            style: TextStyle(color: Colors.black),),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Image(
            width: 400,
            height: 400,
            image: AssetImage('images/poor.jpg')
          ),
        ),
      ),
    ),
  );
}