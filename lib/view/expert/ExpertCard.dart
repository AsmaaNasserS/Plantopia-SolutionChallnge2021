import 'package:flutter/material.dart';

class ExpertCard extends StatelessWidget {

  Widget details;
  Function onPress;

  ExpertCard({this.onPress , this.details});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: details,
    );
  }

}
