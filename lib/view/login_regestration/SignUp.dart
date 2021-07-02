import 'package:conditional_builder/conditional_builder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/firestore/FireStoreUser.dart';

import 'package:gp_app/networking/login_cubit/bloc_cubit.dart';
import 'package:gp_app/networking/login_cubit/bloc_states.dart';
import 'package:gp_app/service/Users.dart';
import 'package:gp_app/service/authentication.dart';

import 'package:gp_app/view/login_regestration/Login.dart';
import 'package:gp_app/view/widgets/textFormField.dart';
import '../../const.dart';
import 'package:provider/provider.dart';

import 'Login.dart';


class SignUp extends StatelessWidget {
  static String id = "SignUp";
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    return  BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
                child: Form(
                  key: formKey,
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                      Widget>[
                    Text('Join us now!', style: kWelcomeScreensTitleText),
                    SizedBox(height: 80.0),
                    DefTextField(
                      label: 'Username',
                      validatorMessage: "username Can'\t be Empty",
                      type: TextInputType.text,
                      controller: userNameController,
                      prefix: Icons.account_circle_outlined,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DefTextField(
                      label: 'Password',
                      validatorMessage: 'password must be at least 8 letters',
                      obsecureText: true,
                      prefix: Icons.lock,
                      type: TextInputType.text,
                      lines: 1,
                      submit: (value) {
                        passwordController.text = value;
                      },
                    ),
                    SizedBox(height: 30),
                    DefTextField(
                      controller: passwordController,
                      label: 'Re-enter the Password',
                      validatorMessage:'password must be at least 8 letters',
                      obsecureText: true,
                      prefix: Icons.redo,
                      type: TextInputType.text,
                      lines: 1,
                      submit: (value) {
                      },
                    ),
                    SizedBox(height: mediaQuery.height * 0.07),

                    Container(
                      height: mediaQuery.height * 0.05,
                      child:  Container(
                        height: mediaQuery.height * 0.05,
                        child: ConditionalBuilder(
                          condition: true,
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                              color: kInActivelogInButtonColor,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: MaterialButton(
                                child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 18.00,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                onPressed: (){
                                  if(formKey.currentState.validate())
                                  {
                                    print("username: ${userNameController.text}");
                                    print("password:  ${passwordController.text}");
                                    LoginCubit.get(context).
                                    userRegister(userName: userNameController.text, password: passwordController.text);

                                  }
                                  else
                                  {
                                    print('Something wrong in login form');
                                  }
                                }
                            ),
                          ),
                          fallback:(context) => CircularProgressIndicator() ,
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
        },

      ),
    );
      }
    }
