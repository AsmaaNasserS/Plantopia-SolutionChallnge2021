import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';
import 'MyStore.dart';
import 'NearByStores.dart';


class MarketPlace extends StatefulWidget {
  static String id = "marketPlace";
  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}


class _MarketPlaceState extends State<MarketPlace> {
  ScrollController _scrollViewController;
  bool _showbar = true;
  bool isScrollingDown = false;
  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection == ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: sideDrawer(),

          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: kInActiveBackButtonColor,
            bottom: TabBar(
              indicatorPadding: EdgeInsets.all(2),
              indicatorWeight: 2,
              unselectedLabelColor:
                  kActiveOrangeColor, // the text colour when it is not chosen
            indicatorSize: TabBarIndicatorSize.values[1],
              //BoxDecpration is used  to have the circuler shape around the words
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kActiveOrangeColor),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),

                        // border:
                        //     Border.all(color: kInActiveOrangeColor, width: 1)),
          ),child: Align(
                      alignment: Alignment.center,
                      child: Text("Near By", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(49),
                    //     border:
                    //         Border.all(color: kInActiveOrangeColor, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("My store", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),

              ],
            ),
            title: Text(
              'Market Place ',
              style: kWelcomeScreensTitleText,
              //style: kWelcomeScreensTitleText,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: NearBy(),
              ),
              Center(
                child: MyStore(),
              ),
            ],
          ),

    ));
  }
}


