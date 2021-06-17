import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/textFormField.dart';
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
    var searchKey = GlobalKey<FormState>();
    final _searchController = TextEditingController();
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kInActiveBackButtonColor,
        bottom:PreferredSize(

          preferredSize: Size.fromHeight(mediaQuery.height * .02),

          key: searchKey ,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10), child: DefTextField(

            label: 'Search',
            prefix: Icons.search_rounded,
            type: TextInputType.text,

          ),),

        ) ,
        elevation: 0,
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
