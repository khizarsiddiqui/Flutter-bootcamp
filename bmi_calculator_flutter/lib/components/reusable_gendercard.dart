// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import '../constants.dart';
import 'package:flutter/material.dart';

class ReusableGenderCard extends StatelessWidget {
  ReusableGenderCard({this.text, this.icon});
  String? text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon!,
          color: Colors.white,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
