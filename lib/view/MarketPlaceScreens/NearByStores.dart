import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'MarketPlaceComponents.dart';
class NearBy extends StatefulWidget {
  @override
  _NearByState createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
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
                  SizedBox(
                    height: mediaQuery.height*0.03
                  ),                  MyStoreCard2(mediaQuery: mediaQuery),
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
