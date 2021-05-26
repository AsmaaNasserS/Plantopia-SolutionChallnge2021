import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/textFormField.dart';
import 'package:gp_app/view/MarketPlaceScreens/MyStore.dart';

class EditProductProfile extends StatefulWidget {
  static String id = "EditProductProfile";

  @override
  _EditProductProfileState createState() => _EditProductProfileState();
}

class _EditProductProfileState extends State<EditProductProfile> {
  final _formkey = GlobalKey<FormState>();

  void validateAndSave() {
    final FormState form = _formkey.currentState;
    if (form.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

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
        child: Form(
          key: _formkey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: mediaQuery.height * 0.3,
                  child: Stack(
                    children: [
                      Container(
                        width: mediaQuery.width,
                        child: Image.asset(
                          'images/img.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Colors.black.withAlpha(0),
                                Colors.black12,
                                Colors.black45
                              ]),
                        ),
                        //todo add image from device or from url
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: MaterialButton(
                          padding: EdgeInsets.all(10.0),
                          height: mediaQuery.height * .02,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Change the picture",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    bottom: 10,
                  ),
                  child: DefTextField(
                    type: TextInputType.name,
                    controller: null,
                    validator: (value) {
                      if (value.isEmpty || value == null)
                        return 'please enter a valid name';
                      return null;
                    },
                    label: "Enter the product Name",
                  ),
                ),

                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    height: mediaQuery.height * 0.15,
                    child: DefTextField(
                      controller: null,
                      validator: (value) {
                        if (value.length < 10)
                          return 'the description should be at least 10 characters.';
                        return null;
                      },
                      type: TextInputType.multiline,
                      lines: 5,
                      label: "Description",
                    ),
                  ),
                ),

                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(10
                  ),

                  child: Row(
                    children: [
                      Expanded( // width: mediaQuery.width * 0.4,
                        // height: mediaQuery.height * 0.05,
                        child: DefTextField(
                          type: TextInputType.number,
                          controller: null,
                          validator: (value) {
                            if (value.isEmpty)
                              return 'please enter the quantity';
                            return null;
                          },
                          label: 'Quantity',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //Price text field
                      Expanded( // width: mediaQuery.width * 0.4,
                        // height: mediaQuery.height * 0.07,
                        child: DefTextField(
                          label: 'Enter the Price',
                          type: TextInputType.number,
                          validator: (value) {
                            if (value.isEmpty) return 'please enter the price';
                            if (double.tryParse(value) == null)
                              return 'Enter a valid number';
                            if (double.parse(value) <= 0)
                              return 'enter a value greater than zero';
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     right: 10,
                //     left: 10,
                //     bottom: 10,
                //   ),
                //   child: TextFormField(
                //       decoration: InputDecoration(
                //     labelText: 'Phone number',
                //     labelStyle: TextStyle(fontWeight: FontWeight.w600),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: kInActivelogInButtonColor,
                //       ),
                //       borderRadius: BorderRadius.circular(15.0),
                //     ),
                //     filled: true,
                //     fillColor: kInActiveBackButtonColor,
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: kActiveBackButtonColor,
                //       ),
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //     // hintText: "Enter phone number",
                //   )),
                // ),
                SizedBox(
                  height: mediaQuery.height * 0.02,
                ),
                Container(
                  height: mediaQuery.height * 0.065,
                  margin: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                      color: kInActivelogInButtonColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: MaterialButton(
                      onPressed: () {
                        validateAndSave();

                        // if (!_formkey.currentState.validate())
                        //   {ScaffoldMessenger.of(context)
                        //       .showSnackBar(SnackBar(content: Text('Processing Data')));}
                        //   //Navigator.pop(context);
                      },
                      child: Text(
                        //todo: if the product already exists it will say save changes, if not text will be save and publish
                        'Save and Publish ',
                        style: klogInButtonTextStyle,
                      ),
                    ),
                  ),
                ),

                //pushReplacementNamed(context, MyStore.id);
              ]),
        ),
      ),
    );
  }
}
