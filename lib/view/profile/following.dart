import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';


class FollowingGrid extends StatelessWidget {
  static const String id = 'Following';
  final String imgUrl = 'images/img.jpg';
  final String username = 'hanafy';

  @override
  Widget build(BuildContext context) {
    bool isFollowed = true;
    double c_width = MediaQuery.of(context).size.width * 0.95;
    return Scaffold(
      appBar: AppBar(title: Text('Following', style: TextStyle(
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

