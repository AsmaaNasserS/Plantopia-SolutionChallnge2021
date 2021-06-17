import 'dart:ui';

import 'package:flutter/material.dart';

import '../../const.dart';
import 'ProductDetails.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

class MarketCard extends StatelessWidget {
  final Size mediaQuery;
  final String price, btntext, title, description, image;
  final Function nav;
  final int cardType;

  MarketCard({
    @required this.mediaQuery,
    @required this.cardType,
    @required this.btntext,
    @required this.title,
    this.description,
    @required this.price,
    @required this.image,
    @required this.nav,
  });

  @override
  Widget build(BuildContext context) {
    //card
    // we wrapped the card with a container to ba able to manage the height
    return Container(
      height: mediaQuery.height * 0.2,
      width: mediaQuery.width * 0.9,
      child: Card(
        semanticContainer: true,
        elevation: 1,
        // shadow
        color: kCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Container(
                  height: mediaQuery.height * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(
                      'images/img.jpg',
                    ),
                  ),
                ),
                title: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: kTextBoldColour,
                  ),
                ),
                subtitle: Text(
                  description,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: KTextLightColour,
                  ),
                ),
              ),

              // We rapped the button inside a row to have it in the right
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: kBodyTextColour.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SmallButton(nav: nav, btntext: btntext),
                      if (cardType != 1)
                        RawMaterialButton(
                          elevation: 0,
                          padding: EdgeInsets.all(3),
                          constraints: BoxConstraints(
                              minWidth:24,minHeight: 24),
                          onPressed:  () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text('Delete Product'),
                                  content: Text(
                                    'Are you sure you want to delete this product',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        ///todo:delete plant from garden
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () => Navigator.pop(context, 'Cancel'),
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(fontSize: 20, color: Colors.grey),
                                        ))
                                  ],
                                ));
                          },
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.delete_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          fillColor: Theme.of(context).errorColor,
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
