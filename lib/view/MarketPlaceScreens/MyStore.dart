import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'MarketPlaceComponents.dart';

class myStore extends StatefulWidget {
  @override
  _myStoreState createState() => _myStoreState();
}

class _myStoreState extends State<myStore> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      width: mediaQuery.width * 1,
      color: kBackgroundColor,
      child: Center(
        child: Column(
          children: [
            MyStoreCard1(mediaQuery: mediaQuery),
            MyStoreCard1(mediaQuery: mediaQuery),
            MyStoreCard1(mediaQuery: mediaQuery),
            MyStoreCard1(mediaQuery: mediaQuery),
            MyStoreCard1(mediaQuery: mediaQuery),
          ],
        ),
      ),
    ));
  }
}



