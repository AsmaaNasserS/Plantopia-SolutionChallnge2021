import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'ProductDetails.dart';


class MyStoreCard extends StatelessWidget {
  const MyStoreCard({
    Key key,
    @required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    //card
    // we wrapped the card with a container to ba able to manage the height
    return Container(
      height: mediaQuery.height * 0.2,
      child: Card(
        semanticContainer: true,
        elevation: 5, // shadow
        color: kCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'images/img.jpg',
                ),
              ),
              title: Text(
                'Sun Flower Seeds',
                style: TextStyle(
                  fontSize: 30.0,
                  color: kTextBoldColour,
                ),
              ),
              subtitle: Text(
                'body 2 ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: KTextLightColour,
                ),
              ),
            ),
            // We rapped the button inside a row to have it in the right
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kInActivelogInButtonColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetails())
                    );
                  },
                  child: Text(
                    'View Details',
                    style: klogInButtonTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}