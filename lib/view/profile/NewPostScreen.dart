import 'package:flutter/material.dart';
import 'package:gp_app/view/profile/Home.dart';
import 'package:gp_app/view/widgets/textFormField.dart';

import '../../const.dart';

class NewPostScreen extends StatelessWidget {
  static const String id = 'New_Post';

  @override
  Widget build(BuildContext context) {
   final mediaQuery = MediaQuery.of(context).size;
   final _postkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New post',
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _postkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                ///inserted photo
                height: mediaQuery.height * 0.4,
                child: Stack(
                  children: [
                    Container(
                      width: mediaQuery.width,
                      child: Image.asset(
                        //todo: image asset should be what was in result screen
                        'images/img.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black.withAlpha(0),
                              Colors.black12,
                              Colors.black45
                            ]),
                      ),

                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: MaterialButton(
                        padding: EdgeInsets.all(10.0),
                        height: mediaQuery.height * .02,
                        onPressed: () {
                          //todo: here to change image from gallery
                          //todo: LAZEM YKOON FE IMAGE + VALIDATOR LEHA
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Change the picture",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mediaQuery.height * .02),
              DefTextField(
                lines: 7, label: 'Caption',

              ),
              MaterialButton(
                onPressed: () {
                  //validateAndSave();
                  //TODO: SHOW LOADING INDICATOR AND POST
                  Navigator.pushReplacementNamed(context, Home.id);

                },
                child: Text(
                   'POST',
                  style: klogInButtonTextStyle,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
