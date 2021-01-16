import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'MarketPlaceComponents.dart';
class nearBy extends StatefulWidget {
  @override
  _nearByState createState() => _nearByState();
}

class _nearByState extends State<nearBy> {
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
                MyStoreCard(mediaQuery: mediaQuery),
                MyStoreCard(mediaQuery: mediaQuery),
                MyStoreCard(mediaQuery: mediaQuery),
                MyStoreCard(mediaQuery: mediaQuery),
                MyStoreCard(mediaQuery: mediaQuery),
              ],
            ),
          ),
        ));

  }
}
