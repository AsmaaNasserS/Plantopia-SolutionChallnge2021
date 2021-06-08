import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/textFormField.dart';

class CreateArticle extends StatefulWidget {
  static const  String id = 'createArticle';
  @override
  _CreateArticleState createState() => _CreateArticleState();
}

class _CreateArticleState extends State<CreateArticle> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Add Article',
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
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  child: Container(
                    height: mediaQuery.height * 0.06,
                    width: mediaQuery.width * 0.52,
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: kButtonTextColour,
                        ),
                        Text('Choose Article Photo',
                          style:klogInButtonTextStyle ,
                        ),
                      ],
                    ),
                  ),
                  onPressed:(){} ,
                ),
              ),
              height: mediaQuery.height * 0.30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/img.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: mediaQuery.height * 0.04,
                      horizontal: mediaQuery.width * 0.04),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // FlatButton(
                      //   onPressed: () {},
                      //   color: kInActivelogInButtonColor,
                      //   height: mediaQuery.height * 0.06,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(15.0),
                      //   ),
                      //   child:
                      //   Text("Select Article Image", style: kButtonLightText),
                      // ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.00,
                        ),
                        decoration: kArticleTextFieldDecoration.copyWith(
                          hintText: 'Enter Article Title',
                          //fillColor: kPinkColor,
                        ),
                        // onChanged: (value) {
                        //   title = value;
                        // },
                      ),
                      SizedBox(height: mediaQuery.height * 0.01),
                      TextField(
                        maxLines: 30,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          //description = value;
                        },
                        autofocus: false,
                        style: TextStyle(fontSize: 18.0),
                        decoration: kArticleTextFieldDecoration.copyWith(
                          hintText: 'Type Your Article',
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.03),
                      FlatButton(
                        onPressed: () {},
                        color: kInActivelogInButtonColor,
                        height: mediaQuery.height * 0.065,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child:
                        Text("Add Article", style: kBottomButtonTextStyle),
                      ),
                    ],
                  ),
                ),),
          ],
        ),
      ),
    );
  }
}
