import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
class LabelledCard extends StatelessWidget {
  String label, details;

  LabelledCard({this.label, this.details});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    border: Border.all(
    width: 1,
    style: BorderStyle.solid,
    color: Colors.grey.shade300),
    ),child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, textAlign: TextAlign.left, style: kWelcomeScreensTitleText),
        SizedBox(
          height: mediaQuery.width * 0.03,
        ),
        Text(
          details,
          style: kBodyTextColour.copyWith(color: Colors.grey.shade500, fontWeight: FontWeight.w500),
        ),
      ],
    ),);
  }
}