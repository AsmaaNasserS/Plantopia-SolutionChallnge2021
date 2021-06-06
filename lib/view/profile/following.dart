import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';
import 'package:gp_app/view/widgets/followbtn.dart';
import 'package:gp_app/view/widgets/smallGreenBtn.dart';

class FollowingGrid extends StatelessWidget {
  static const String id = 'Following';
  final String imgUrl = 'images/img.jpg';
  final String username = 'hanafy';

  @override
  Widget build(BuildContext context) {
    bool isFollowed = true;
    double c_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 30,
        padding: EdgeInsets.all( 10.0),
        itemBuilder: (context, i) {
          return Container(
            width: c_width,
            padding: EdgeInsets.all(5),
            child: ListTile(
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
                  textAlign: TextAlign.left,
                ),
              ),
              // trailing: FollowBtn()
            ),
          );
        },
      ),
    );
  }
}
