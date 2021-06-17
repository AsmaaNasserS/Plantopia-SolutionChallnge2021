import 'package:gp_app/const.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/identification_part/identifcationscreen.dart';
import 'package:gp_app/identification_part/networking/cubit_bloc.dart';
import 'package:gp_app/identification_part/plant_results/plant_result.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';
import 'package:gp_app/view/profile/Profile.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Profile(),
    NotificationScreen(),
    MarketPlace(),
    SearchScreen()
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Profile();

  //= NotificationScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideDrawer(),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: kInActivelogInButtonColor,
          child: Icon(
            Icons.camera_alt_outlined,
            size: 35,
          ),
          onPressed: () {
             {
               navigateTo(context, IdentificationScreen());
             };
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: kInActiveBackButtonColor,
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.house_siding,
                          size: 30,
                          color: currentTab == 0
                              ? kInActivelogInButtonColor
                              : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0
                                ? kInActivelogInButtonColor
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currentScreen = Articles Search Screen

                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 30,
                          color: currentTab == 3
                              ? kInActivelogInButtonColor
                              : Colors.grey,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: currentTab == 3
                                ? kInActivelogInButtonColor
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = MarketPlace();

                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.storefront,
                          size: 30,
                          color: currentTab == 2
                              ? kInActivelogInButtonColor
                              : Colors.grey,
                        ),
                        Text(
                          'Market',
                          style: TextStyle(
                            color: currentTab == 2
                                ? kInActivelogInButtonColor
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = NotificationScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                          color: currentTab == 3
                              ? kInActivelogInButtonColor
                              : Colors.grey,
                        ),
                        Text(
                          'News',
                          style: TextStyle(
                            color: currentTab == 3
                                ? kInActivelogInButtonColor
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
