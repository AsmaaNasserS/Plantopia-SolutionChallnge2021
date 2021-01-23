import 'package:flutter/material.dart';


class ArticlesCard extends StatelessWidget {

  Widget details;
  Function OnPress;

  ArticlesCard({this.details , this.OnPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPress,
      child: details,
    );
  }
}
