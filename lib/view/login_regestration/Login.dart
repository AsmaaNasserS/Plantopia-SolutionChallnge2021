import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/service/authentication.dart';
import 'package:gp_app/view/widgets/textFormField.dart';
import '../../const.dart';
import '../EditProfile.dart';
import 'ForgetPassword.dart';
import 'SignUp.dart';

import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  static String id = "Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Text('Welcome Back !', style: kWelcomeScreensTitleText),
                SizedBox(height: mediaQuery.height * 0.1),

                DefTextField(
                  label: 'Email',
                  validator: (value) {
                    if (!value.contains('@') || value.isEmpty)
                      return 'please enter a valid e-mail';
                    return null;
                  },
                  type: TextInputType.emailAddress,
                  prefix: Icons.email,
                  controller: _emailController,
                  submit: (value) {
                    _emailController.text = value;
                  },
                ),
                SizedBox(height: mediaQuery.height * 0.03),
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
                  controller: _passwordController,
                  lines: 1,
                  submit: (value) {
                    _passwordController.text = value;
                  },
                ),
                SizedBox(height: mediaQuery.height * 0.01),
                Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      alignment: Alignment.center,
                      //  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        onTap: () {
                          ///* done TODO  GO TO FORGET PASSWORD */////
                          Navigator.pushNamed(context, ForgetPassword.id);
                        },
                        child: Text(
                          'Forgot your Password?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )),
                SizedBox(height: mediaQuery.height * 0.07),
                Container(
                  height: mediaQuery.height * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      if(formKey.currentState.validate())
                        print(_emailController.text + " " + _passwordController.text);
                      // print(_emailController.text.trim());
                      // print(_passwordController.text.trim());
                      //
                      // context.read<AuthenticationService>().signIn(
                      //       email: _emailController.text.trim(),
                      //       password: _passwordController.text.trim(),
                      //     );
                    },

                    ///* TODO LOG IN PAGE *////
                    ///* TODO ONCLICK CHANGE COLOR *////

                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //   shadowColor: Colors.greenAccent,
                      color: kInActivelogInButtonColor,
                      //    elevation: 12.0,
                      child: Center(
                        child: Text(
                          'Login',
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
                SizedBox(height: mediaQuery.height * 0.04),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          //left line
                          color: Colors.black,
                          height: mediaQuery.height * 0.01,
                        )),
                  ),
                  Text("OR"),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          // right line
                          color: Colors.black,
                          height: mediaQuery.height * 0.01,
                        )),
                  ),
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
                Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Text("Don't have an account yet?  ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          )),
                      InkWell(
                        onTap: () {
                          ///* done TODO  GO TO Sign up  */////
                          Navigator.pushNamed(context, SignUp.id);
                          //   color: Colors.green;
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              // fontFamily: 'Cabin',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
