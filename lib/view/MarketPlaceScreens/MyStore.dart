import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/noResults.dart';
import 'EditProductProfile.dart';
import 'MarketPlaceComponents.dart';
import 'ProductDetails.dart';
import 'marketCard.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

class MyStore extends StatefulWidget {
  static const id = 'myStore';

  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: mediaQuery.height * 0.03),
        // we added pading o change appbar place

        child: Container(
          width: mediaQuery.width,
          color: kBackgroundColor,
          child: Center(
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: SmallButton(
                //     nav: () {
                //       Navigator.pushNamed(context, EditProductProfile.id);
                //     },
                //     btntext: 'Add new product',
                //     icon: Icons.add,
                //   ),
                // ),
                Column(
                  children: List.generate(
                    5,
                    (index) => MarketCard(
                      cardType: 0,
                      mediaQuery: mediaQuery,
                      btntext: 'Edit product',
                      title: 'SunFlower',
                      description: 'body 2',
                      price: '30 LE',
                      image: 'images/img.jpg',
                      nav: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProductProfile(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
