import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/const.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/identification_part/identifcationscreen.dart';
import 'package:gp_app/identification_part/networking/cubit_bloc.dart';
import 'package:gp_app/identification_part/plant_results/plant_result.dart';
import 'package:gp_app/networking/home_cubit/home_cubit.dart';
import 'package:gp_app/networking/home_cubit/home_states.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';
import 'package:gp_app/view/profile/Profile.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';

import '../../components.dart';

class Home extends StatelessWidget {
  static String id = 'Home';

 // @override
 //// _HomeState createState() => _HomeState();
//}

//class _HomeState extends State<Home> {
  //int currentTab = 0; // to keep track of active tab index
 // final List<Widget> screens = [
  //  Profile(),
   // NotificationScreen(),
   // MarketPlace(),
   // SearchScreen()
  //]; // to store nested tabs
 // final PageStorageBucket bucket = PageStorageBucket();
  //Widget currentScreen = Profile();
  //= NotificationScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),

      child: BlocConsumer<HomeCubit,HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            //  resizeToAvoidBottomInset: false,

            drawer: sideDrawer(),
            body: PageStorage(
              child: cubit.currentScreen,
              bucket: cubit.bucket,
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
                  }
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
                            // setState(() {
                            //   currentScreen = Profile();
                            //   currentTab = 0;
                            // });
                            cubit.changeBottomNavBar(0, Profile());

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.house_siding,
                                size: 30,
                                color: cubit.currentTab == 0
                                    ? kInActivelogInButtonColor
                                    : Colors.grey,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: cubit.currentTab == 0
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
                            // setState(() {
                            //   currentScreen =SearchScreen();
                            //   currentTab = 3;
                            // });
                            cubit.changeBottomNavBar(3, SearchScreen());
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.search,
                                size: 30,
                                color: cubit.currentTab == 3
                                    ? kInActivelogInButtonColor
                                    : Colors.grey,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: cubit.currentTab == 3
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
                            // setState(() {
                            //   currentScreen = MarketPlace();
                            //   currentTab = 2;
                            // });
                            cubit.changeBottomNavBar(2, MarketPlace());
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.storefront,
                                size: 30,
                                color: cubit.currentTab == 2
                                    ? kInActivelogInButtonColor
                                    : Colors.grey,
                              ),
                              Text(
                                'Market',
                                style: TextStyle(
                                  color: cubit.currentTab == 2
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
                            // setState(() {
                            //   currentScreen = NotificationScreen();
                            //   currentTab = 3;
                            // });
                            cubit.changeBottomNavBar(3, NotificationScreen());
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.notifications_none_rounded,
                                size: 30,
                                color: cubit.currentTab == 3
                                    ? kInActivelogInButtonColor
                                    : Colors.grey,
                              ),
                              Text(
                                'News',
                                style: TextStyle(
                                  color: cubit.currentTab == 3
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
        },

      ),
    );
  }
}
