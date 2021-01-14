import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/view/ForgetPassword.dart';
import 'package:gp_app/view/MarketPlaceScreens/MarketPlace.dart';
import 'package:gp_app/view/PasswordUpdated.dart';
import 'package:gp_app/view/ResetPassword.dart';
import 'package:gp_app/view/SignUp.dart';
import 'view/Login.dart';
import 'package:gp_app/view/onboardingScreens/WelcomeScreen1.dart';
import 'package:gp_app/view/onboardingScreens/ConstWelcomeScreens.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: marketPlace(), // write the namr of your page to rin it immediatly , to run the whole app uncomment the following
      // initialRoute: WelcomeScreen1.id,
      // routes: {
      //   WelcomeScreen1.id:(context)=> WelcomeScreen1(),
      //   ConstWelcomeScreen.id:(context)=>ConstWelcomeScreen(),
      //   SignUp.id: (context) => SignUp(),
      //   Login.id: (context) => Login(),
      //   ForgetPassword.id: (context) => ForgetPassword(),
      //   ResetPassword.id: (context) => ResetPassword(),
      //   PasswordUpdated.id: (context) => PasswordUpdated(),
      // },
    );
  }
}
