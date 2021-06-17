import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';


class FollowersGrid extends StatelessWidget {
  static const String id = 'Followers';
  final String imgUrl = 'images/img.jpg';
  final String username = 'hanafy';

  @override
  Widget build(BuildContext context) {
    bool isFollowed = true;
    double c_width = MediaQuery.of(context).size.width * 0.95;
    return Scaffold(
      appBar: AppBar(title: Text('Followers', style: TextStyle(
        fontSize: 25.00,
        fontWeight: FontWeight.w600,
        color: KTextLightColour,
      ),),),
      body: ListView.builder(
        itemCount: 30,
        // padding: EdgeInsets.all( 5.0),
        itemBuilder: (context, i) {
          return Container(
            width: c_width,
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(

                  leading: CircleAvatar(
                    backgroundImage: AssetImage(imgUrl),
                    radius: 30,
                  ),
                  title:GestureDetector(
                    onTap: (){
                      //todo: go to username profile
                    },
                    child: Text(
                      username,
                      style: TextStyle(
                        fontSize: 16.00,
                        fontWeight: FontWeight.w600,
                        color: KTextLightColour,),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  //todo: trailing will be un/follow button
                  // trailing: FollowBtn()
                ),  Divider(
                  thickness: 1,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}




// //import 'dart:html';
//
// import 'package:flutter/material.dart';
// import 'package:gp_app/const.dart';
// import 'package:gp_app/view/widgets/smallGreenBtn.dart';
//
// class FollowersGrid extends StatelessWidget {
//   static const String id = 'Followers';
//
//   @override
//   Widget build(BuildContext context) {
//     final String imgUrl = 'images/img.jpg';
//     final String username = 'hanafy';
//     BoxDecoration btnTheme = BoxDecoration(
//       color: kInActivelogInButtonColor,
//       borderRadius: BorderRadius.circular(20),
//       border: Border.all(
//           width: 1, color: kInActivelogInButtonColor, style: BorderStyle.solid),
//     );
//     bool isFollowed = true;
//     Color txtColor = Colors.white;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Followers',
//           style: TextStyle(
//             fontSize: 25.00,
//             fontWeight: FontWeight.w600,
//             color: KTextLightColour,
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: 10,
//         itemBuilder: (context, i) {
//           return Container(
//             width: double.infinity,
//             child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(imgUrl),
//                   radius: 30,
//                 ),
//                 title: TextButton(
//                   child: Text(username),
//                   onPressed: () {
//                     //todo: pust to username profile
//                   },
//                 ),
//                 trailing: MaterialButton(
//                   textColor: txtColor,
//                   child: Container(decoration: btnTheme),
//                   elevation: 0,
//                   onPressed: () {
//                     if (isFollowed) {
//                       // AlertDialog(
//                       //   title: 'Unfollow $username ?'
//                       // )
//                       /// unfollow
//                       btnTheme = BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(
//                             width: 1,
//                             color: kInActivelogInButtonColor,
//                             style: BorderStyle.solid),
//                       );
//                       txtColor = kInActivelogInButtonColor;
//                     }
//                   },
//                 )
//                 // MaterialButton(
//                 //   onPressed: (){
//                 //
//                 //   },
//                 //   shape:
//                 //   BorderRadius.circular(20.0),
//                 //   color: kActiveOrangeColor,
//                 //   child: Center(
//                 //     child: Text('Follow',
//                 //         style: TextStyle(
//                 //             fontSize: 20,
//                 //             color: Colors.white)),
//                 //   ),
//                 // ),,
//
//                 ),
//           );
//         },
//       ),
//     );
//   }
// }
