import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'MarketPlaceComponents.dart';

class MyStore extends StatefulWidget {
  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Padding(

          padding: EdgeInsets.only(top: mediaQuery.height *0.03) , // we added pading o change appbar place

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
    ),
        ));
  }
}



