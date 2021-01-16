import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'MyStore.dart';
import 'NearByStores.dart';

class MarketPlace extends StatefulWidget {
  static String id = "marketPlace";
  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kActiveBackButtonColor,
            bottom: TabBar(
              unselectedLabelColor: kInActiveOrangeColor, // the text colour when it is not chosen
              indicatorSize: TabBarIndicatorSize.label,
              //BoxDecpration is used  to have the circuler shape around the words
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kActiveOrangeColor),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.circular(49) ,
                        border: Border.all(color: kInActiveOrangeColor, width: 1)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Near By"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius : BorderRadius.circular(49) ,
                        border: Border.all(color: kInActiveOrangeColor, width: 1)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("My store"),
                    ),
                  ),
                ),
              ],
            ),
            title: Center(
              child: Text(
                'Market Place ',
                style: kWelcomeScreensTitleText,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: nearBy(),),
              Center(child: myStore()),
            ],
          ),
        ));


  }
}
