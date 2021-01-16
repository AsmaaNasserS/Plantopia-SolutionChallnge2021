import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/Graduation-Project/lib/view/loginandregestration/Login.dart';

class ConstWelcomeScreen extends StatelessWidget {
  static String id = 'const_welcome_screen';

  final pageDecoration = PageDecoration(
    titleTextStyle: kWelcomeScreensTitleText,
    bodyTextStyle: kWelcomeScreensDescriptionText,
    contentPadding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
    imagePadding: const EdgeInsets.fromLTRB(5, 70, 5, 0),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("images/welcome2.png"),
        title: "Identify your plants",
        body:
        "Simply take or upload a photo of the plant, and get instantaneous and accurate plant results relevant to the captured photo with a small description of the plant ",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset("images/welcome3.png"),
        title: "Join our community",
        body:
        "Share your plants with others, If you can\'t find the plant or seed you\'re looking for, then you may make a request and somebody may have what you\'re looking for You may offer plants to share with others whether or not you want anything in return.",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset("images/welcome4.png"),
        title: "Meet a Plant Expert",
        body:
        "Plant Experts helps you become a better plant person you can make virtual appointments with them, helping you with cultivation recommendations you can handle yourself, in a video chat. , banishing pests, propagation techniques, plant placement — no problem",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset("images/welcome5.png"),
        title: "My Garden Profile",
        body:
        " You can personalize the app by adding the specific plants you have in your house it can help you track your garden\'s progress, and the app will notify you of their requirements.",
        decoration: pageDecoration,
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: kButtonTextColour,
        pages: getPages(),
        showSkipButton: true,
        //showNextButton: true,
        //nextFlex: 2,
        dotsFlex: 1,
        skipFlex: 1,
        animationDuration: 1000,
        curve: Curves.fastOutSlowIn,
        // next: Container(
        //   height: 60,
        //   width: 60,
        //   decoration: BoxDecoration(
        //     color: kInActivelogInButtonColor,
        //     borderRadius: BorderRadius.circular(40),
        //   ),
        //   child: Center(
        //     child: Icon(
        //       Icons.navigate_next,
        //       size: 45,
        //       color: kActiveBackButtonColor,
        //     ),
        //   ),
        // ),
        dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: kActivelogInButtonColor,
          activeSize: Size(20, 15),
          //size: Size.square(10),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),

        skip: Container(
          child: Center(
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        done: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: kActivelogInButtonColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
              "Done",
              style: TextStyle(color: kButtonTextColour, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onDone: () {
          //print('done');
          Navigator.pushNamed(context, Login.id);
        },
      ),
    );
  }
}