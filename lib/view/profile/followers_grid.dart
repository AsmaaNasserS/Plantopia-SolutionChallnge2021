import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

class FollowersGrid extends StatefulWidget {
  static const String id = 'Followers';

  @override
  _FollowersGridState createState() => _FollowersGridState();
}

class _FollowersGridState extends State<FollowersGrid> {
  @override
  Widget build(BuildContext context) {
    final String imgUrl= 'images/img.jpg';
    final String username= 'hanafy';
    BoxDecoration btnTheme = BoxDecoration(
      color: kInActivelogInButtonColor,

        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1,
            color: kInActivelogInButtonColor,
            style: BorderStyle.solid),
    ) ;
    bool isFollowed = true;
    Color txtColor = Colors.white;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return Container(
            width: double.infinity,
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(imgUrl),
                  radius: 30,
                ),
                title: TextButton(child: Text(username), onPressed: (){
                  //todo: pust to username profile
                },),
                trailing: MaterialButton(
                  textColor: txtColor,
                  child: Container(
                    decoration: btnTheme
                  ),
                  elevation: 0,

                  onPressed: () {
                    if (isFollowed){
                      // AlertDialog(
                      //   title: 'Unfollow $username ?'
                      // )
                      /// unfollow
                      setState(() {
                        btnTheme =BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1,
                              color: kInActivelogInButtonColor,
                              style: BorderStyle.solid),
                        ) ;
                        txtColor = kInActivelogInButtonColor;
                      });
                    }

                  },

                )
              // MaterialButton(
              //   onPressed: (){
              //
              //   },
              //   shape:
              //   BorderRadius.circular(20.0),
              //   color: kActiveOrangeColor,
              //   child: Center(
              //     child: Text('Follow',
              //         style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.white)),
              //   ),
              // ),,

            ),
          );
        },
      ),
    );
  }
}
