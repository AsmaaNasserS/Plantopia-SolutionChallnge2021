import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'MarketPlaceComponents.dart';
import 'ProductDetails.dart';
import 'marketCard.dart';

class NearBy extends StatefulWidget {
  static String id = "NearbyStores";

  @override
  _NearByState createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(mediaQuery.height * .002),
          child: Container(
            //  padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Material(
                color: Colors.grey[300],
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        cursorRadius: Radius.circular(30.0),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration.collapsed(
                          hintText: ' Search by name or address',
                          hintStyle: kLightText.copyWith(fontSize: 17),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[300],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: mediaQuery.width * 1,
        color: kBackgroundColor,
        child: Center(
          child: Column(
              children: List.generate(
            5,
            (index) => MarketCard(
              cardType: 1,
              mediaQuery: mediaQuery,
              btntext: 'View details',
              title: 'SunFlower',
              description: 'body 2',
              price: '30 LE',
              image: 'images/img.jpg',
              nav: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(),
                  ),
                );
              },
            ),
          )),
        ),
      )),
    );
  }
}
