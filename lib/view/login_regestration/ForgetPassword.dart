import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/view/login_regestration/SignUp.dart';
import '../../const.dart';
import 'Login.dart';
import 'ResetPassword.dart';
import 'package:gp_app/view/widgets/textFormField.dart';

class ForgetPassword extends StatefulWidget {
  static String id = "ForgetPassword";

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}
//final _emailController = TextEditingController();

class _ForgetPasswordState extends State<ForgetPassword> {
  createAlertDialog(BuildContext context){
    return showDialog(context: context , builder: (context){
      return AlertDialog(
        title: Center(child: Text("Please check your mail")),
        //content:Text("Resend a mail ?") ,
        actions: [
          FlatButton(onPressed:(){ Navigator.pop(context);}, child: Text('Done'),),
          FlatButton(onPressed:(){}, child: Text('Resend?'),),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: mediaQuery.height * 0.18, horizontal: mediaQuery.width * 0.07),
          color: kBackgroundColor,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Forgot your Password?', style: kWelcomeScreensTitleText),
              SizedBox(height: mediaQuery.height * 0.02),
              Text('Please enter your email and we will send you a link to return to your account',
                  textAlign: TextAlign.center,
                  style: kTextDescription),
              // 'An email with the reset link will be sent to your email.'
              SizedBox(height: mediaQuery.height * 0.15),

              DefTextField(
                label: 'Enter your email',
                validator: (value) {
                  if (!value.contains('@') || value.isEmpty)
                    return 'please enter a valid e-mail';
                  return null;
                },
                type: TextInputType.emailAddress,
                prefix: Icons.email,
                //controller: _emailController,
                submit: (value) {
                 // _emailController.text = value;
                },
              ),
              SizedBox(height: mediaQuery.height * 0.10),
              Container(
                height: mediaQuery.height * 0.07,
                child: GestureDetector(
                  onTap: () {
                    createAlertDialog(context);
                    ///* TODO SUBMIT TO FORGET PASSWORD *////
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ResetPassword()),
                    // );
                    ///* TODO ONCLICK CHANGE COLOR *////
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kInActivelogInButtonColor,
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20.00,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Text(
                  "Don't have an account ? ",
                  style: kTextDescription,
                ),
                InkWell(
                  onTap: () {
                    ///*done TODO  GO TO Sign IN  */////
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Cabin',
                        decoration: TextDecoration.underline),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }

}
