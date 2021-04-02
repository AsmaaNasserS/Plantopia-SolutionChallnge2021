import 'package:flutter/cupertino.dart';
class PostCard extends StatelessWidget {

  Widget details;
  Function onPress;

  PostCard({this.details , this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: details,
    );
  }
}

