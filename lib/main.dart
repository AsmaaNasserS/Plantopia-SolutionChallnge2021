import 'package:flutter/material.dart';
import 'package:gp_app/view/ForgetPassword.dart';
import 'package:gp_app/view/PasswordUpdated.dart';
import 'package:gp_app/view/ResetPassword.dart';
import 'package:gp_app/view/SignUp.dart';
import 'view/Login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



 /* return MaterialApp(
    //  home: Login(),
    //  home: SignUp(),
    //  home:ForgetPassword(),
    // home: ResetPassword(),
     home: PasswordUpdated(),

  );*/
    return MaterialApp(
     initialRoute: Login.id,
     routes: {
          SignUp.id:(context)=> SignUp(),
          Login.id:(context)=> Login(),
          ForgetPassword.id:(context)=>ForgetPassword(),
          ForgetPassword.id:(context)=>ForgetPassword(),
          ResetPassword.id:(context)=>ResetPassword(),
          PasswordUpdated.id:(context)=>PasswordUpdated(),
        },);

    }
}


