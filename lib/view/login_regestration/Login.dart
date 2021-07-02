import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/networking/local/shared_prefrences.dart';
import 'package:gp_app/networking/login_cubit/bloc_cubit.dart';
import 'package:gp_app/networking/login_cubit/bloc_states.dart';
import 'package:gp_app/service/authentication.dart';
import 'package:gp_app/view/profile/Home.dart';
import 'package:gp_app/view/widgets/textFormField.dart';
import '../../components.dart';
import '../../const.dart';
import '../EditProfile.dart';
import 'ForgetPassword.dart';
import 'SignUp.dart';

import 'package:provider/provider.dart';

class Login extends StatelessWidget {
   static String id = "Login";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var  passwordController = TextEditingController();
    final mediaQuery = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState)
            {
              if(state.loginModel.status)
                {
                  print(state.loginModel.message);
                  print(state.loginModel.token);
                  Fluttertoast.showToast(
                      msg: state.loginModel.message,
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 5,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0,
                  );
                  CacheHelper.saveData(key: 'token', value: state.loginModel.token).
                  then((value) {
                    navigateAndFinish(context, Home());
                  });
                }
            }
        },
        builder: (context, state) {
          var cubit = LoginCubit.get(context);
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
                        controller: emailController,
                        label: 'User Name',
                       validatorMessage: 'please enter a valid e-mail',
                        type: TextInputType.text,
                        prefix: Icons.email,
                        submit: (value) {
                          // emailController.text = value;
                        },
                      ),
                      SizedBox(height: mediaQuery.height * 0.03),
                      DefTextField(
                        label: 'Password',
                        validatorMessage:'password must be at least 8 letters',
                        obsecureText: true,
                        prefix: Icons.lock,
                        type: TextInputType.text,
                        controller: passwordController,
                        lines: 1,
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
                        child: ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                              color: kInActivelogInButtonColor,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: MaterialButton(
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
                              onPressed: (){
                                if(formKey.currentState.validate())
                                {
                                  print("mayarr ${emailController.text}");
                                  print("password  ${passwordController.text}");
                                  cubit.userLogin(
                                      userName: emailController.text,
                                      password: passwordController.text);
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
        },

      ),
    );
  }
}
