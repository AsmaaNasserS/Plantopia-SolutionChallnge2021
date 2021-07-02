import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/labelledCard.dart';

import 'ConfirmPage.dart';

class ProductDetails extends StatefulWidget {
  static String id = "ProductDetails";

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool confirmed = false;
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.grey.shade700,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: kInActiveBackButtonColor,
        title: Text(
          'Product Details ',
          style: kWelcomeScreensTitleText,
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
              height: mediaQuery.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sun Flower Seeds',
                            style: kWelcomeScreensTitleText,
                            textAlign: TextAlign.left,
                          ),
                          //ToDo: sellerProfile
                          TextButton(
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Seller Name  ',
                                softWrap: true,
                                style: kBodyTextColour.copyWith(
                                    color: kInActivelogInButtonColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '30 \$',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Quantity', style: kWelcomeScreensTitleText.copyWith(fontSize: 18),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RawMaterialButton(
                                constraints: BoxConstraints(maxWidth: 35, maxHeight: 35),
                                elevation: 0,

                                onPressed: () {
                                  setState(() {
                                    if ( !confirmed && _quantity!=0 )
                                      _quantity--;

                                  });
                                },
                                fillColor: confirmed? Colors.grey.shade400: kInActivelogInButtonColor,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                padding: EdgeInsets.all(5.0),
                                shape: CircleBorder(),
                              ),
                               Container(margin: EdgeInsets.all(10),child: Text( _quantity.toString(), style: kWelcomeScreensTitleText.copyWith(fontSize: 18),)),

                              RawMaterialButton(
                                constraints: BoxConstraints(maxWidth: 40, maxHeight: 40),
                                elevation: 0,
                                onPressed: () {
                                  setState(() {
                                    if (!confirmed) _quantity++;
                                  });
                                },
                                fillColor: confirmed? Colors.grey.shade400: kInActivelogInButtonColor,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                padding: EdgeInsets.all(5.0),
                                shape: CircleBorder(),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.height * .02,
                      ),
                      LabelledCard(
                        label: 'Details',
                        details:
                            'This is seeds for the plant sunflower, you can have you plant Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  ',
                      ),
                      SizedBox(
                        height: mediaQuery.height * .02,
                      ),
                      // LabelledCard(
                      //   label: 'Important notes',
                      //   details:
                      //       'This is seeds for the plant sunflower,do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  ',
                      // ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed:(){},
      //
      //
      //      child: Text('Add to cart'),

      bottomNavigationBar: MaterialButton(
        height: mediaQuery.height * 0.1,
        color: confirmed ? kActiveOrangeColor : kInActivelogInButtonColor,
        onPressed: () {
          if (confirmed) {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: Text('Cancel your order'),
                      content: Text(
                        'Are you sure you want to delete this item?',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade600),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'No');
                            setState(() {
                              confirmed = false;

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  duration: Duration(milliseconds: 1500),
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                      'Your order has been cancelled successfully'),
                                ),
                              );
                            });
                          },
                          child: Text(
                            'Cancel order',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'keep the order',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ));
          } else {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Confirm your order'),
                content: Text(
                  'by confirming this order we will send you an email within 48 hours, after then you cannot undo it.\nAre you sure you want to by this item?',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'No');
                    },
                    child: Text(
                      'Cancel order',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Todo: add order to in progress orders and send email to the seller and buyer
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(milliseconds: 1500),
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                              'Your order has been confirmed successfully'),
                        ),
                      );
                      setState(() {
                        confirmed = true;
                      });
                    },
                    child: Text(
                      'Buy this item',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            confirmed
                ? Text(
                    'purchase is in progress',
                    style: klogInButtonTextStyle,
                  )
                : Text(
                    'Buy this item',
                    style: klogInButtonTextStyle,
                  ),
          ],
        ),
      ),
    );
  }
}
