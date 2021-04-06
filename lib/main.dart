import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/service/authentication.dart';
import 'package:gp_app/view/EditProfile.dart';
import 'package:gp_app/view/externalScreens/notificationsScreen.dart';
import 'package:gp_app/view/login_regestration/ForgetPassword.dart';
import 'package:gp_app/view/login_regestration/Login.dart';
import 'package:gp_app/view/login_regestration/PasswordUpdated.dart';
import 'package:gp_app/view/login_regestration/ResetPassword.dart';
import 'package:gp_app/view/login_regestration/SignUp.dart';
import 'package:gp_app/view/onboardingScreens/ConstWelcomeScreens.dart';
import 'package:gp_app/view/onboardingScreens/WelcomeScreen1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gp_app/view/profile/Home.dart';

import 'package:provider/provider.dart';

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
          context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors
              .green, // Your app THeme color , used to change drawer colour
        ),
        home: Home(),
        initialRoute: Home.id,
          routes: {
          WelcomeScreen1.id: (context) => WelcomeScreen1(),
            EditProfile.id: (context) => EditProfile(),
            ConstWelcomeScreen.id: (context) => ConstWelcomeScreen(),
            SignUp.id: (context) => SignUp(),
            Login.id: (context) => Login(),
            ForgetPassword.id: (context) => ForgetPassword(),
            ResetPassword.id: (context) => ResetPassword(),
            PasswordUpdated.id: (context) => PasswordUpdated(),
            NotificationScreen.id: (context) => NotificationScreen(),
          }
     ),
    );
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
    } else{

      return EditProfile();}
  }
}