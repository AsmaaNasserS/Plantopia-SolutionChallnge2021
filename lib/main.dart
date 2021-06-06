import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/service/authentication.dart';
import 'package:gp_app/view/EditProfile.dart';
import 'package:gp_app/view/MarketPlaceScreens/EditProductProfile.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/MarketPlaceScreens/MyStore.dart';
import 'package:gp_app/view/MarketPlaceScreens/NearByStores.dart';
import 'package:gp_app/view/MarketPlaceScreens/ProductDetails.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/externalScreens/search_screen.dart';
import 'package:gp_app/view/login_regestration/ForgetPassword.dart';
import 'package:gp_app/view/login_regestration/Login.dart';
import 'package:gp_app/view/login_regestration/PasswordUpdated.dart';
import 'package:gp_app/view/login_regestration/ResetPassword.dart';
import 'package:gp_app/view/login_regestration/SignUp.dart';
import 'package:gp_app/view/onboardingScreens/ConstWelcomeScreens.dart';
import 'package:gp_app/view/onboardingScreens/WelcomeScreen1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gp_app/view/profile/Home.dart';
import 'package:gp_app/view/profile/Profile.dart';
import 'package:gp_app/view/profile/followers_grid.dart';
import 'package:gp_app/view/profile/following.dart';
import 'package:gp_app/view/profile/ownProfile.dart';

import 'package:provider/provider.dart';

import 'const.dart';
import 'view/MarketPlaceScreens/EditProductProfile.dart';
import 'view/MarketPlaceScreens/EditProductProfile.dart';
import 'view/expert/ExpertsList.dart';
import 'view/expert/ExpertsList.dart';
import 'view/login_regestration/Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
            context
                .read<AuthenticationService>()
                .authStateChanges,
          ),
        ],
        child: MaterialApp(
          theme: new ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: kInActiveBackButtonColor, elevation: 0.5,
                iconTheme:IconThemeData(color:KTextLightColour),
            foregroundColor: Colors.grey.shade700,

            centerTitle: true,
          ),

          primarySwatch: Colors.green,
          accentColor: Colors.grey.shade700,
          // Your app THeme color , used to change drawer colour
        ),
        home: Home(),
        initialRoute: Home.id,
        routes: {
            ownProfile.id: (context) => ownProfile(),
          FollowersGrid.id: (context) => FollowersGrid(),
          FollowingGrid.id: (context) => FollowingGrid(),

          WelcomeScreen1.id: (context) => WelcomeScreen1(),
          EditProfile.id: (context) => EditProfile(),
          ConstWelcomeScreen.id: (context) => ConstWelcomeScreen(),
          SignUp.id: (context) => SignUp(),
          Login.id: (context) => Login(),
          ForgetPassword.id: (context) => ForgetPassword(),
          ResetPassword.id: (context) => ResetPassword(),
          PasswordUpdated.id: (context) => PasswordUpdated(),
          MyStore.id: (context) => MyStore(),
          NearBy.id: (context) => NearBy(),
          ProductDetails.id: (context)=> ProductDetails(),
          EditProductProfile.id: (context) => EditProductProfile(),
          SearchScreen.id: (context) => SearchScreen(),
          ExpertsList.id: (context) => ExpertsList(),

          //NotificationScreen.id: (context) => NotificationScreen(),
        }),);
  }
}

class AuthenticationWrapper extends StatefulWidget {
  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return EditProfile();
    } else {
      return EditProfile();
    }
  }
}
