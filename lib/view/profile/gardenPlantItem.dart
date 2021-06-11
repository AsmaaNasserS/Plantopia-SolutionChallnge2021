import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gp_app/view/PlantDetails.dart';

class PlantICard extends StatelessWidget {
  final Function longPress, tap;
  final Widget childWidget;
  PlantICard({this.childWidget, this.longPress, this.tap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      onLongPressUp: longPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: EdgeInsets.all(10.0),
        child: childWidget
      ),
    );
  }
}
