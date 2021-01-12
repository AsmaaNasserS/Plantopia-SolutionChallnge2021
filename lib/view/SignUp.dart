import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gp_app/view/Login.dart';
import '../const.dart';
class SignUp extends StatefulWidget {
  static String id ="SignUp";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomPadding: false,

        body:
        Container(

        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start ,
              children:<Widget> [

              Text('Join us now! !',style: kWelcomeScreensTitleText),
          SizedBox(height: 80.0),

          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  size: 20,
                  color: kActiveBackButtonColor,
                ),
                labelText: 'UserName',
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
                SizedBox(height: 100.0),
                Container(
                  height: 50.0,
                  child: GestureDetector(
                    onTap: () {
                      ///* TODO SIGN UP PAGE *////
                      ///* TODO ONCLICK CHANGE COLOR *////
                    },
                    child:Material(
                      borderRadius: BorderRadius.circular(20.0),
                     // shadowColor: Colors.greenAccent,
                      color: kInActivelogInButtonColor,
                   //   elevation: 12.0,
                      child: Center(
                        child: Text(
                          'Sign up',
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
                            onPressed: () {  ///* TODO SIGN UP WITH FACEBOOK *///
                            }
                        ),
                        SizedBox(width: 30.0),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,size: 40,),
                            onPressed: () {  ///* TODO SIGN UP WITH GMAIL *///
                            }
                        ),],
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Center(
                  child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(top: 15.0, left: 120.0),
                      child: Row(
                          children: <Widget>[
                            Text("Already a member!  " , style:TextStyle(color:Colors.grey,) ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Login()),
                                );
                                ///*done TODO  GO TO Sign in  */////
                              //  color: Colors.green;
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    // fontFamily: 'Cabin',
                                    decoration: TextDecoration.underline
                                ),
                              ),
                            ),])),
                )
        ]),),);

  }
}
