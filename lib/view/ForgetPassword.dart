import 'package:flutter/material.dart';
import 'package:gp_app/view/Login.dart';
import 'package:gp_app/view/ResetPassword.dart';
import '../const.dart';

class ForgetPassword extends StatefulWidget {
  static String id = "ForgetPassword";

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Forget your password? ', style: kWelcomeScreensTitleText),
              SizedBox(height: 40.0),
              Text('An email with the reset link will be sent to your email.',
                  style: kWelcomeScreensDescriptionText),
              SizedBox(height: 50.0),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      size: 20,
                      color: kActiveBackButtonColor,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
              SizedBox(height: 180.0),
              Container(
                height: 50.0,
                child: GestureDetector(
                  onTap: () {
                    ///* TODO SUBMIT TO FORGET PASSWORD *////
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );

                    ///* TODO ONCLICK CHANGE COLOR *////
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    //   shadowColor: Colors.greenAccent,
                    color: kInActivelogInButtonColor,

                    //   elevation: 12.0,
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 20.00,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 120.0),
              Center(
                child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(top: 15.0, left: 100.0),
                    child: Row(children: <Widget>[
                      Text("Already a member! ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      InkWell(
                        onTap: () {
                          ///*done TODO  GO TO Sign IN  */////
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                          //  color: Colors.green;
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              // fontFamily: 'Cabin',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
