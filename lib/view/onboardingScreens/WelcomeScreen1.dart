import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'ConstWelcomeScreens.dart';

class WelcomeScreen1 extends StatefulWidget {
  static String id = 'welcome_screen1';
  @override
  _WelcomeScreen1State createState() => _WelcomeScreen1State();
}

class _WelcomeScreen1State extends State<WelcomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColour,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 50, 5, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Center(
                child: Image.asset('images/welcome1.png'),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Center(
                child: Text(
                  'Welcome to Plantzania!',
                  style: kWelcomeScreensTitleText,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Center(
                child: Text(
                  'The best app for your plants',
                  style: kWelcomeScreensDescriptionText,
                ),
              ),
            ),
            SizedBox(
              height: 140.0,
            ),
            Material(
              color: kActivelogInButtonColor,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  //Navigator.pushNamed(context, ConstWelcomeScreen.id);
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration (seconds:1),
                        transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secanimation , Widget child){
                          animation = CurvedAnimation( parent: animation, curve: Curves.easeInOut );
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        } ,
                        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secanimation) {
                          return ConstWelcomeScreen();
                        }),
                  );
                },
                minWidth: 280.0,
                height: 55.0,
                child: Text(
                  'Get Started',
                  style: klogInButtonTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}