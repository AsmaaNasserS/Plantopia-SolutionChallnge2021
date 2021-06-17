import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const.dart';
//import 'EditProfileComponent.dart';
import 'widgets/textFormField.dart';

//TODO ERROR IN POPUP ANY NEW VALUE
class EditProfile extends StatefulWidget {
  static String id = "EditProfile";
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _title = TextEditingController();
  final _password = TextEditingController();
  final _changeName = TextEditingController();
  final _changedEmail = TextEditingController();
  final _changedTitle = TextEditingController();
  final _changedPassword = TextEditingController();

  Future<void> _changename(
      TextEditingController name, TextEditingController newName) async {
    // bool change = false;
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       // return ReusableAlertDialog(
    //       //   dialogTitle:'Edit your Name',
    //       //   currentTitleController: name,
    //       //   currentLabelName: 'Current name',
    //       //   newTitleController: newName,
    //       //   newLabelName: 'New Name',
    //       // );
    //     });
   //   if(change == true)
   // return "newName.text";
   // else
   //   return name.text;
  }
  _changemail(TextEditingController email, TextEditingController newEmail) {
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return ReusableAlertDialog(
    //         dialogTitle:'Edit your Email',
    //         currentTitleController: email,
    //         currentLabelName: 'Current email',
    //         newTitleController: newEmail,
    //         newLabelName: 'New Email',
    //       );
    //     });
  }
  _changetitle(TextEditingController title, TextEditingController newTitle) {
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return ReusableAlertDialog(
    //         dialogTitle:'Edit your title',
    //         currentTitleController: title,
    //         currentLabelName: 'Current title',
    //         newTitleController: newTitle,
    //         newLabelName: 'New title',
    //       );
    //     });
  }
  _changepassword(
      TextEditingController password, TextEditingController newPassword) {
    newPassword.text = "444";
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return ReusableAlertDialog(
    //         dialogTitle:'Edit your password',
    //         currentTitleController: password,
    //         currentLabelName: 'Current password',
    //         newTitleController: newPassword,
    //         newLabelName: 'New password',
    //       );
    //     });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    _changeName.text = "";
    _changedEmail.text = "";
    _changedTitle.text = "";
    _changedPassword.text = "";

    ///data from data base

    _name.text = "hello";
    _email.text = "hello";
    _title.text = "hello";
    _password.text = "hello";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: kWelcomeScreensTitleText,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: kInActiveBackButtonColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: kTextBoldColour),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          child: Column(
            children: <Widget>[
              Material(
                color: appBarColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(mediaQuery.width * 0.20),
                    bottomRight: Radius.circular(mediaQuery.width * 0.20)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: mediaQuery.height * 0.01,
                      horizontal: mediaQuery.width * 0.01),
                  height: mediaQuery.height * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: mediaQuery.width * 0.15),
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              //backgroundImage: NetworkImage('https://widgetwhats.com/app/uploads/2019/11/free-profile-photo-whatsapp-4.png'),
                              backgroundImage: AssetImage('images/expert2.png'),
                              backgroundColor: Colors.white,
                              //minRadius: mediaQuery.height * 0.04,
                              maxRadius: mediaQuery.height * 0.10,
                            ),
                            Positioned(
                              bottom: 3,
                              right: 5,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.edit, color: Colors.white),
                                  onPressed: (){},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: mediaQuery.width * 0.03),
                      Text('Profile Photo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: mediaQuery.height * 0.05,
                    horizontal: mediaQuery.width * 0.04),
                child: Column(
                  children: [
                    DefTextField(
                      controller: _name,
                      onChanged:(text){_changename(_name, _changeName);},
                      label: 'NAME',
                      obsecureText:false,
                      type: TextInputType.name,
                      initialValue:_name.text,
                      prefix: Icons.account_circle_outlined,
                    ),
                    SizedBox(height: mediaQuery.height * 0.03),
                    DefTextField(
                      controller:_email,
                      onChanged:(text){_changemail(_email, _changedEmail);},
                      label: 'EMAIL',
                      obsecureText:false,
                      type: TextInputType.emailAddress,
                      initialValue:_email.text,
                      prefix: Icons.email,
                    ),
                    SizedBox(height: mediaQuery.height * 0.03),
                    DefTextField(
                      controller: _title,
                      onChanged:(text){_changetitle(_title, _changedTitle);},
                      label: 'TITLE',
                      obsecureText:false,
                      type: TextInputType.text,
                      initialValue:_title.text,
                      prefix: Icons.title,
                    ),
                    SizedBox(height: mediaQuery.height * 0.03),
                    DefTextField(
                      controller: _password,
                      onChanged:(text){_changepassword(_password, _changedPassword);},
                      label: 'PASSWORD',
                      obsecureText:true,
                      type: TextInputType.text,
                      initialValue:_password.text,
                      lines: 1,
                      submit: (value) {
                        _password.text = value;
                      },
                      validator: (value) {
                        if (value.length < 8)
                          return 'password must be at least 8 letters';
                        return null;
                      },
                      prefix: Icons.lock,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right:mediaQuery.width * 0.05 ),
                child: FlatButton(
                  onPressed: () {},
                  color: kInActivelogInButtonColor,
                  //minWidth: mediaQuery.width * 0.24,
                  height: mediaQuery.height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child:
                  Text('Save', style: kBottomButtonTextStyle),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
