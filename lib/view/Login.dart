import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/view/ForgetPassword.dart';
import 'package:gp_app/view/SignUp.dart';
import '../const.dart';

class Login extends StatefulWidget {
  static String id ="Login";
  @override
  _LoginState createState() => _LoginState();
}
///*TEXT ALGIN *//
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      body:
      Container(

         padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
        //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start ,
          children:<Widget> [

              Text('Welcome Back !',style: kWelcomeScreensTitleText),
            SizedBox(height: 80.0),

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

            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.lock,
                      size: 20,
                      color: kActiveBackButtonColor,
                    ),
                    onPressed: () {},
                  ),

                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
              obscureText: true,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPassword()),
                      );
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                )
            ),
            SizedBox(height: 120.0),
            Container(
              height: 50.0,
              child: GestureDetector(
                onTap: () {

                  ///* TODO LOG IN PAGE *////
                  ///* TODO ONCLICK CHANGE COLOR *////
                },
                child:Material(
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
                ),),
            ),
            SizedBox(height: 30.0),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider( //left line
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider( // right line
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
                        icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blueAccent,size: 45,),
                        onPressed: () {  ///* TODO LOGIN WITH FACEBOOK *///
                        }
                    ),
                    SizedBox(width: 30.0),
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,size: 40,),
                        onPressed: () {  ///* TODO LOGIN WITH GMAIL *///
                        }
                    ),],
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(top: 15.0, left: 100.0),
                  child: Row(
                      children: <Widget>[
                        Text("Don't have an account yet?  " , style:TextStyle(color:Colors.grey,) ),
                        InkWell(
                          onTap: () {
                            ///* done TODO  GO TO Sign up  */////
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                         //   color: Colors.green;
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                // fontFamily: 'Cabin',
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ),])),
            )
          ],
        ),
      ),
    );
  }
}
