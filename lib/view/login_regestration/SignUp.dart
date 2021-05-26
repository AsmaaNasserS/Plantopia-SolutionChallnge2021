import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/firestore/FireStoreUser.dart';
import 'package:gp_app/service/Users.dart';
import 'package:gp_app/service/authentication.dart';

import 'package:gp_app/view/login_regestration/Login.dart';
import 'package:gp_app/view/widgets/textFormField.dart';
import '../../const.dart';
import 'package:provider/provider.dart';

import 'Login.dart';
import 'Login.dart';

class SignUp extends StatefulWidget {
  static String id = "SignUp";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
          child: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              Text('Join us now!', style: kWelcomeScreensTitleText),
              SizedBox(height: 80.0),
              DefTextField(
                  label: 'Full name',
                  validator: (value) {
                    _userNameController.text = value;
                  },
                  type: TextInputType.text),
              SizedBox(
                height: 5,
              ),
              DefTextField(
                label: 'UserName',
                validator: (value) {
                  if (value.isEmpty) return "enter a valid zeft";
                  return null;
                },
                type: TextInputType.text,
                controller: _userNameController,
                prefix: Icons.account_circle_outlined,
              ),
              SizedBox(
                height: 30,
              ),
              DefTextField(
                label: 'Email',
                validator: (value) {
                  if (!value.contains('@') || value.isEmpty)
                    return 'please enter a valid e-mail';
                  return null;
                },
                type: TextInputType.emailAddress,
                prefix: Icons.email,
                submit: (value) {
                  _emailController.text = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              DefTextField(
                label: 'Phone number',
                validator: (value) {
                  if (value.isEmpty) {
                    return 'phone number is mandatory to communicate with you ';
                  } else if (!regExp.hasMatch(value) || value.length < 10)
                    return 'please enter a valid number';
                  return null;
                },
                //  controller: _emailController,
                type: TextInputType.number,
                prefix: Icons.phone,
              ),
              SizedBox(height: 25.0),
              DefTextField(
                label: 'Password',
                validator: (value) {
                  if (value.length < 8)
                    return 'password must be at least 8 letters';
                  return null;
                },
                obsecureText: true,
                prefix: Icons.lock,
                type: TextInputType.text,
                lines: 1,
                submit: (value) {
                  _passwordController.text = value;
                },
              ),
              SizedBox(height: 30),
              DefTextField(
                label: 'Re-enter the Password',
                validator: (value) {
                  if (value.length < 8)
                    return 'password must be at least 8 letters';
                  return null;
                },
                obsecureText: true,
                prefix: Icons.redo,
                type: TextInputType.text,
                lines: 1,
                submit: (value) {
                  _passwordController.text = value;
                },
              ),
              SizedBox(height: mediaQuery.height * 0.07),
              Container(
                height: mediaQuery.height * 0.05,
                child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState.validate())
                      print(_emailController.text +
                          " " +
                          _passwordController.text);
                  }
                  // context.read<AuthenticationService>().signUp(
                  //   email: _emailController.text.trim(),
                  //   password: _repasswordController.text.trim(),
                  //
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Login()),
                  // );
                  //
                  // print("Users.getInstance().userID");
                  // print(Users.getInstance().userID);
                  //   FireStoreUser.addUserName(_userNameController.text);
                  ///* TODO SIGN UP PAGE *////
                  ///* TODO ONCLICK CHANGE COLOR *////
                  ,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: kInActivelogInButtonColor,
                    ),
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState.validate())
                            print(_emailController.text +
                                " " +
                                _passwordController.text);
                        },

                        // shadowColor: Colors.greenAccent,

                        //   elevation: 12.0,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 18.00,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
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
                new Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        // right line
                        color: Colors.black,
                        height: mediaQuery.height * 0.01,
                      )),
                )
              ]),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  width: mediaQuery.width * 0.35,
                  //color: Colors.red,
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: kInActivelogInButtonColor,
                            size: 40,
                          ),
                          onPressed: () {
                            ///* TODO LOGIN WITH FACEBOOK *///
                          }),
                      SizedBox(width: mediaQuery.width * 0.05),
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: kInActivelogInButtonColor,
                            //Colors.red,
                            size: 40,
                          ),
                          onPressed: () {
                            ///* TODO LOGIN WITH GMAIL *///
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Center(
                child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Already a member!  ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          )),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Login.id);

                          //  color: Colors.green;
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              // fontFamily: 'Cabin',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ])),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
