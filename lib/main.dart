import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/view/EditProfile.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/Graduation-Project/lib/view/loginandregestration/ForgetPassword.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/Graduation-Project/lib/view/loginandregestration/PasswordUpdated.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/Graduation-Project/lib/view/loginandregestration/ResetPassword.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/Graduation-Project/lib/view/loginandregestration/SignUp.dart';
import 'view/loginandregestration/Login.dart';
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
    initialRoute: EditProfile.id,
      //  initialRoute: WelcomeScreen1.id,
      routes: {
        WelcomeScreen1.id:(context)=> WelcomeScreen1(),
        ConstWelcomeScreen.id:(context)=>ConstWelcomeScreen(),
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
        ForgetPassword.id: (context) => ForgetPassword(),
        ResetPassword.id: (context) => ResetPassword(),
        PasswordUpdated.id: (context) => PasswordUpdated(),
        EditProfile.id: (context) => EditProfile(),
      },
    );
  }
}
