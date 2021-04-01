import 'package:flutter/material.dart';


class ArticlesCard extends StatelessWidget {

  Widget details;
  Function onPress;

  ArticlesCard({this.details , this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: details,
    );
  }
}
