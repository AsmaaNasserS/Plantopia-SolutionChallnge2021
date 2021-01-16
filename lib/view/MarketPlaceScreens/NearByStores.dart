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
    return Scaffold(
      appBar: AppBar(
    backgroundColor: kCardColor,
          actions: <Widget>[
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.search, color:kActiveBackButtonColor,),
          )
        ],
        centerTitle: false,
        title: Text('Search Bar' , style: kLightText,),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20), ),),

    body: SingleChildScrollView(
          child: Container(
            width: mediaQuery.width * 1,
            color: kBackgroundColor,
            child: Center(
              child: Column(
                children: [
                  MyStoreCard2(mediaQuery: mediaQuery),
                  MyStoreCard2(mediaQuery: mediaQuery),
                  MyStoreCard2(mediaQuery: mediaQuery),
                  MyStoreCard2(mediaQuery: mediaQuery),
                  MyStoreCard2(mediaQuery: mediaQuery),
                ],
              ),
            ),
          )),
    );

  }
}
