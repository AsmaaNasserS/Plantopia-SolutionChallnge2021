import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/labelledCard.dart';

class ProductDetails extends StatelessWidget {
  static String id = "ProductDetails";

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
                                    color: Colors.grey.shade500),
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
                      LabelledCard(
                        label: 'Important notes',
                        details:
                            'This is seeds for the plant sunflower,do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  ',
                      ),
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
        color: kInActivelogInButtonColor,
        onPressed: () {
          //ToDo: Add to cart. (btn state is changed : text-> remove or go to cart, color changed too)
          //TODO: ADD TO CART FUNCTION

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: Duration(milliseconds: 1500),
              behavior: SnackBarBehavior.floating,
              content: Text('Product added to cart'),
              action: SnackBarAction(
                label: 'Remove',
                onPressed: () {
                  print("saved!");
                },
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Add to cart',
              style: klogInButtonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
