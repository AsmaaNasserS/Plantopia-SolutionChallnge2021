import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/view/ForgetPassword.dart';
import 'package:gp_app/view/PasswordUpdated.dart';
import 'package:gp_app/view/ResetPassword.dart';
import 'package:gp_app/view/SignUp.dart';
import 'view/Login.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login.id,
      routes: {
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
        ForgetPassword.id: (context) => ForgetPassword(),
        ResetPassword.id: (context) => ResetPassword(),
        PasswordUpdated.id: (context) => PasswordUpdated(),
      },
    );
  }
}
