import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/view/ForgetPassword.dart';
import 'package:gp_app/view/SignUp.dart';
import '../const.dart';
import 'ForgetPassword.dart';
import 'SignUp.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  static String id = "Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
          child: Column(
            children: <Widget>[
              Text('Welcome Back !', style: kWelcomeScreensTitleText),
              SizedBox(height: 80.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    size: 20,
                    color: kActiveBackButtonColor,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                onSubmitted: (value) {
                  _emailController.text = value;
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20,
                    color: kActiveBackButtonColor,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                obscureText: true,
                onSubmitted: (value) {
                  _passwordController.text = value;
                },
              ),
              SizedBox(height: 5.0),
              Container(
                  // alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Container(
                    alignment: Alignment.center,
                    //  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      onTap: () {
                        ///* done TODO  GO TO FORGET PASSWORD */////
                        Navigator.pushNamed(
                          context,
                          ForgetPassword.id
                          );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  )),
              SizedBox(height: 120.0),
              Container(
                height: 50.0,
                child: GestureDetector(
                  onTap: () {
                    ///* TODO LOG IN PAGE *////
                    ///* TODO ONCLICK CHANGE COLOR *////
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    //   shadowColor: Colors.greenAccent,
                    color: kInActivelogInButtonColor,
                    //    elevation: 12.0,
                    child: Center(
                      child: Text(
                        'Login Now',
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
              SizedBox(height: 30.0),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        //left line
                        color: Colors.black,
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        // right line
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ]),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  width: 130,
                  //color: Colors.red,
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blueAccent,
                            size: 45,
                          ),
                          onPressed: () {
                            ///* TODO LOGIN WITH FACEBOOK *///
                          }),
                      SizedBox(width: 30.0),
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                            size: 40,
                          ),
                          onPressed: () {
                            ///* TODO LOGIN WITH GMAIL *///
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Center(
                child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(top: 15.0, left: 100.0),
                    child: Row(children: <Widget>[
                      Text("Don't have an account yet?  ",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      InkWell(
                        onTap: () {
                          ///* done TODO  GO TO Sign up  */////
                          Navigator.pushNamed(
                            context,
                            SignUp.id
                          );
                          //   color: Colors.green;
                        },
                        child: Text(
                          'Signup',
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
