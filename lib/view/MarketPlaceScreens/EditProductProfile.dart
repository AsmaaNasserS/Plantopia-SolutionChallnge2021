import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';


class EditProductProfile extends StatelessWidget {
  static String id = "EditProductProfile";

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kInActiveBackButtonColor,
        title: Center(
          child: Text(
            'Product Details ',
            style: kWelcomeScreensTitleText,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset(
                'images/img.jpg',
                fit: BoxFit.fitWidth,
                height: mediaQuery.height * 0.3,
              ),
            ),
            SizedBox(
              height: mediaQuery.height*0.02,
            ),

            ListTile(
              title: Text(
                'Sun Flower Seeds',
                style: kWelcomeScreensTitleText,
              ),
              subtitle: Text(
                'Seller Name  ',
                style: kBodyTextColour,
              ),
            ),
            ListTile(
              title: Text(
                  'Details',
                  style: kWelcomeScreensTitleText
              ),
              subtitle: Text(
                'This is seeds for the plant sunflower, you can have you plant   ',
                style: kBodyTextColour,
              ),
            ),

          ],
        ),


      ),
      bottomNavigationBar:
      FlatButton(
        height:mediaQuery.height*0.1,
        color: kInActivelogInButtonColor,
        onPressed: () {
        },
        child: Text(
          'Save and Publish ',
          style: klogInButtonTextStyle,
        ),
      ),
    );
  }
}
