import 'package:flutter/material.dart';
import 'package:gp_app/view/Login.dart';
import '../const.dart';

class PasswordUpdated extends StatefulWidget {

  static String id ="PasswordUpdated";
  @override
  _PasswordUpdatedState createState() => _PasswordUpdatedState();
}

class _PasswordUpdatedState extends State<PasswordUpdated> with TickerProviderStateMixin  {

/**/



/**/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body:
    Container(

        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
    //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
     child: Column(
      mainAxisAlignment: MainAxisAlignment.start ,
      children:<Widget> [

        Text('Reset  your password ',style: kWelcomeScreensTitleText),
        SizedBox(height: 40.0),
        Text('Your identity has been verified!',style: kWelcomeScreensDescriptionText),
        Text('Set new password',style: kWelcomeScreensDescriptionText),
        SizedBox(height: 50.0),
        ///*TODO animate (right icon)*///
        ///

        SizedBox(height: 50.0),
        Container(
          height: 50.0,
          child: GestureDetector(
            onTap: () {
              ///*done TODO LOG IN PAGE *///
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
              ///* TODO ONCLICK CHANGE COLOR *////
            },
            child:Material(
              borderRadius: BorderRadius.circular(20.0),
             // shadowColor: Colors.greenAccent,
              color: kInActivelogInButtonColor,
            //  elevation: 12.0,
              child: Center(
                child: Text(
                  'Login Now',
                  style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),),
        ),],
    ),
    ),

    );
  }
}
