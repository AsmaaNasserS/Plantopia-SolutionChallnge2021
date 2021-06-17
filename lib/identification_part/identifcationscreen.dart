import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gp_app/identification_part/networking/cubit_states.dart';
import 'package:gp_app/identification_part/plant_results/plant_result.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';
import 'package:gp_app/view/profile/Profile.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';

import '../const.dart';
import 'networking/cubit_bloc.dart';

class IdentificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color buttonColor;

    return BlocConsumer<IdentificationCubit, IdentificationStates>(
        listener: (context, state) => {},
        builder: (context, state) {
          var cubit = IdentificationCubit.get(context);
          return Scaffold(
            drawer: sideDrawer(),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: appBarColor,
              title: Text(
                "Identify your plant",
                style: TextStyle(
                  fontSize: 25.00,
                  fontWeight: FontWeight.bold,
                  color: KTextLightColour,
                ),
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    child: Image(image: AssetImage('images/identify.png'))),
                SizedBox(height: 15),
                Text(
                  'Please Upload a Photo of your plant',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    'Choose a photo',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  height: 45,
                  color: kInActivelogInButtonColor,
                  onPressed: () {
                    cubit.getImage().then((value) {
                      navigateTo(context, PlantResult());
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:40.0),
                  child: Center(
                    child: Text(
                      'Simply upload any photo of the plant, and get instantaneous and accurate plant results relevant to the captured photo with a small description of the plant.',
                      style: TextStyle(color: KTextLightColour,
                        height: 1.5,
                        fontSize: 12
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
