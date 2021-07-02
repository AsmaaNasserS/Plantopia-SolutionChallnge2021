import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';
import 'package:gp_app/view/profile/Profile.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentTab = 0;
  Widget currentScreen = Profile();
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> screens = [
    Profile(),
    NotificationScreen(),
    MarketPlace(),
    SearchScreen()
  ]; //

  void changeBottomNavBar(int index, Widget screen){
    currentTab = index;
    currentScreen = screen;
    emit(BottomNavStates());
  }




}

