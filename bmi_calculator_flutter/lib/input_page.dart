// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, invalid_required_positional_param, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Colors.red;
const colorThemeCard = Color(0xFF16213E);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(colorThemeCard),
              ),
              Expanded(
                child: ReusableCard(colorThemeCard),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(colorThemeCard),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colorThemeCard),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colorThemeCard),
                  ),
                ],
              ),
            ),
          ],
        )),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(@required this.color);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
