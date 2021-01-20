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
            ' My Product Details ',
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
                height: mediaQuery.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(right:10 , left: 10, bottom: 10,  ),
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kInActiveBackButtonColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kActiveBackButtonColor,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter the product Name",
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(right:10 , left: 10, bottom: 10,  ),

                child: Container(
                  height: mediaQuery.height*0.2,
                  child: TextField(
                    maxLines: 5,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kInActiveBackButtonColor,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kActiveBackButtonColor,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Descrption",
                      )),
                ),
              ),
              Row( children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right:10, left: 10, bottom: 10 ,  ),
                    child: Container(
                      width: mediaQuery.width*0.4,
                      height: mediaQuery.height*0.05,
                      child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kInActiveBackButtonColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: kActiveBackButtonColor,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Quantity ",
                          ),),
                    ),
                  ),
                ),
                //Price text field
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right:10, left: 10, bottom: 10 ,  ),
                    child: Container(
                      width: mediaQuery.width*0.4,
                      height: mediaQuery.height*0.05,
                      child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kInActiveBackButtonColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: kActiveBackButtonColor,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Price",
                          )),

                    ),
                  ),
                ),
              ],),
              Padding(
                padding: const EdgeInsets.only(right:10 , left: 10, bottom: 10,  ),
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kInActiveBackButtonColor,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kActiveBackButtonColor,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter phone number",
                    )),
              ),
              

            ]),
      ),
      bottomNavigationBar: FlatButton(
        height: mediaQuery.height * 0.1,
        color: kInActivelogInButtonColor,
        onPressed: () {},
        child: Text(
          'Save and Publish ',
          style: klogInButtonTextStyle,
        ),
      ),
    );
  }
}
