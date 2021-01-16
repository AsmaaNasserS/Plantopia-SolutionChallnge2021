import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const.dart';
//TODO ERROR IN POPUP ANY NEW VALUE
class EditProfile extends StatefulWidget {
  static String id ="EditProfile";
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _name= TextEditingController();
  final _email= TextEditingController();
  final _title= TextEditingController();
  final _password= TextEditingController();
  final _changeName= TextEditingController();
  final _changedEmail= TextEditingController();
  final _changedTitle= TextEditingController();
  final _changedPassword= TextEditingController();
  Future<void>  _changename(TextEditingController name ,TextEditingController newName) async{
    bool change = false;
    showDialog(context: context, builder: (BuildContext context) {
      final mediaQuery = MediaQuery.of(context).size;
      return Center(
        child: SingleChildScrollView(
          child: AlertDialog(
            content: Stack(
              children: <Widget>[
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("change your Name !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green ,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        controller: name,
                        readOnly: true,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ///Change
                      TextField(
                        controller: newName,
                        onTap: ()=> print("yes"),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'New Name',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.width*.08),
                      Container(
                        margin:  EdgeInsets.only(left:mediaQuery.width*0.5),
                        height: mediaQuery.height * 0.04,
                        width: mediaQuery.width * 0.3,
                        child: GestureDetector(

                          onTap: ()=> {
                            change = true,
                            Navigator.of(context).pop(context),
                            ///* TODO change profile  PAGE *//*///

                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: kInActivelogInButtonColor,
                            child: Center(
                              child: Text(
                                'change',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
    /* if(change == true)
   return "newName.text";
   else
     return name.text;*/
  }
  _changemail(TextEditingController email ,TextEditingController newEmail){
    showDialog(context: context, builder: (BuildContext context) {
      final mediaQuery = MediaQuery.of(context).size;
      return Center(
        child: SingleChildScrollView(
          child: AlertDialog(
            content: Stack(
              children: <Widget>[
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("change your Email !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green ,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        controller: email,
                        readOnly: true,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ///Change
                      TextField(
                        controller: newEmail,
                        onTap: ()=> print("yes"),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'New Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.width*.08),
                      Container(
                          margin:  EdgeInsets.only(left:mediaQuery.width*0.5),
                          height: mediaQuery.height * 0.04,
                          width: mediaQuery.width * 0.3,
                          child: GestureDetector(
                              onTap: ()=>{
                                ///* TODO change profile  PAGE *////
                                /// Navigator.of(context).pop(context),
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                color: kInActivelogInButtonColor,
                                child: Center(
                                  child: Text(
                                    'change',
                                    style: TextStyle(
                                        fontSize: 18.00,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
  _changetitle(TextEditingController title ,TextEditingController newTitle){
    showDialog(context: context, builder: (BuildContext context) {
      final mediaQuery = MediaQuery.of(context).size;
      return Center(
        child: SingleChildScrollView(
          child: AlertDialog(
            content: Stack(
              children: <Widget>[
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("change your title !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green ,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        controller: title,
                        readOnly: true,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'title',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ///Change
                      TextField(
                        controller: newTitle,
                        onTap: ()=> print("yes"),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'New title',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: mediaQuery.width*.08),
                      Container(
                          margin:  EdgeInsets.only(left:mediaQuery.width*0.5),
                          height: mediaQuery.height * 0.04,
                          width: mediaQuery.width * 0.3,
                          child: GestureDetector(
                              onTap: ()=> {
                                Navigator.of(context).pop(context),
                                ///* TODO change profile  PAGE *////
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                color: kInActivelogInButtonColor,
                                child: Center(
                                  child: Text(
                                    'change',
                                    style: TextStyle(
                                        fontSize: 18.00,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
  _changepassword(TextEditingController password ,TextEditingController newPassword){
    newPassword.text ="444";
    showDialog(context: context, builder: (BuildContext context) {
      final mediaQuery = MediaQuery.of(context).size;
      return Center(
        child: SingleChildScrollView(
          child: AlertDialog(
            content: Stack(
              children: <Widget>[
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("change your password !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green ,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        controller: password,
                        readOnly: true,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ///Change
                      TextField(

                        controller: newPassword,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelText: 'New password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      SizedBox(height: mediaQuery.width*.08),
                      Container(
                          margin:  EdgeInsets.only(left:mediaQuery.width*0.5),
                          height: mediaQuery.height * 0.04,
                          width: mediaQuery.width * 0.3,
                          child: GestureDetector(
                              onTap: ()=> { Navigator.of(context).pop(context),},
                              ///* TODO change profile  PAGE *////

                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                color: kInActivelogInButtonColor,
                                child: Center(
                                  child: Text(
                                    'change',
                                    style: TextStyle(
                                        fontSize: 18.00,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    _changeName.text ="";
    _changedEmail.text ="";
    _changedTitle.text ="";
    _changedPassword.text ="";
    ///data from data base

    _name.text ="hello";
    _email.text ="hello";
    _title.text ="hello";
    _password.text ="hello";
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(

        padding: EdgeInsets.symmetric(vertical:30),
        child: Material(
          child: Column(
            children: <Widget>[
              Material(
                color: kActiveBackButtonColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(mediaQuery.width*0.1) ,bottomRight:Radius.circular(mediaQuery.width*0.1)),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical:mediaQuery.width*0.1, horizontal: mediaQuery.height*0.0001),
                  height: mediaQuery.height*0.25,
                  child: Center(
                    //   widthFactor: mediaQuery.width,
                      child: Column(
                        children: [
                          SizedBox(height: mediaQuery.height*.03),
                          Container( margin:  EdgeInsets.only(right:mediaQuery.width*0.5),
                            child: Text('Edit Profile ! ', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black
                            ),),
                          ),
                          SizedBox(height: mediaQuery.width*.05),
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://www.dostor.org/upload/photo/news/74/4/600x338o/604.jpg' ),
                            minRadius:mediaQuery.height*0.06,
                            maxRadius:mediaQuery.height*0.08,
                          ),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.width*.08),

              Container(
                width: mediaQuery.width*0.8,
                child: TextField(
                  controller: _name,

                  onTap:  ()=>  {
                    _changename(_name ,_changeName),
                    print("name in main"),
                    print(_name),

                  },
                  readOnly: true,

                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      labelText: 'NAME',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(Icons.arrow_back_ios_outlined, color: Colors.green,)
                  ),

                ),
              ),
              SizedBox(height: mediaQuery.width*.04),
              Container(
                width: mediaQuery.width*0.8,
                child: TextField(

                  controller: _email,
                  onTap: ()=> {
                    _changemail(_email, _changedEmail),
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(Icons.arrow_back_ios_outlined , color: Colors.green,)
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.width*.04),
              Container(
                width: mediaQuery.width*0.8,
                child: TextField(

                  controller: _title,
                  onTap: ()=> {
                    _changetitle(_title,_changedTitle),
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      labelText: 'TITLE',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(Icons.arrow_back_ios_outlined, color: Colors.green,)
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.width*.04),
              Container(
                width: mediaQuery.width*0.8,
                child: TextField(
                  controller: _password,
                  onTap:()=> {
                    _changepassword(_password, _changedPassword),
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(Icons.arrow_back_ios_outlined, color: Colors.green,)
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: mediaQuery.width*.06),
              SizedBox(height: mediaQuery.width*.06),
              Container(
                margin:  EdgeInsets.only(left:mediaQuery.width*0.5),
                height: mediaQuery.height * 0.06,
                width: mediaQuery.width * 0.3,
                child: GestureDetector(
                  onTap: ()=> {
                    //TODO save edit  PAGE
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kInActivelogInButtonColor,
                    child: Center(
                      child: Text(
                        'Save',
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
            ],
          ),
        ),
      ),
    );
  }
}
