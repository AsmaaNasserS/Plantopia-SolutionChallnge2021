import 'package:flutter/material.dart';

import 'package:gp_app/const.dart';

import '../expert/ExpertCard.dart';
import 'Photos.dart';
import 'User.dart';

class ownProfile extends StatefulWidget {
  var UserName;
  var UserImage;
  var NoOfPosts;
  var NoOfFollowers;
  var NoOfFollowing;
  var bio;

  ownProfile(
      {this.UserImage,
      this.UserName,
      this.NoOfFollowers,
      this.NoOfFollowing,
      this.NoOfPosts,
      this.bio});

  @override
  _ownProfileState createState() => _ownProfileState(
      UserName: this.UserName,
      UserImage: this.UserImage,
      NoOfPosts: this.NoOfPosts,
      NoOfFollowing: this.NoOfFollowing,
      NoOfFollowers: this.NoOfFollowers,
      bio: this.bio);
}

class _ownProfileState extends State<ownProfile> {
  var UserName;
  var UserImage;
  var NoOfPosts;
  var NoOfFollowers;
  var NoOfFollowing;
  var bio;

  _ownProfileState(
      {this.UserImage,
      this.UserName,
      this.NoOfFollowers,
      this.NoOfFollowing,
      this.NoOfPosts,
      this.bio});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 363,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kBackgroundColor,
            ),
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
            child: ExpertCard(
              details: Center(
                child: Column(
                  children: [
                    Image(image: AssetImage(users[0].UserImage)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      users[0].UserName,
                      style: kWelcomeScreensTitleText,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Posts",
                              style: kTextDescription,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              users[0].NoOfPosts,
                              style: kExpertsDescriptionTexts,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Followers",
                              style: kTextDescription,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              users[0].NoOfFollowers,
                              style: kExpertsDescriptionTexts,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Following",
                              style: kTextDescription,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              users[0].NoOfFollowing,
                              style: kExpertsDescriptionTexts,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(users[0].bio),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme(
                          buttonColor: kInActiveOrangeColor,
                          minWidth: 150,
                          height: 40.0,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Photos",
                              style: klogInButtonTextStyle,
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        ButtonTheme(
                          buttonColor: kInActiveOrangeColor,
                          minWidth: 150,
                          height: 40.0,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "My garden",
                              style: klogInButtonTextStyle,
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 320,
            width: 400,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(1.5),
// card size
              childAspectRatio: 0.7,
// mainAxisSpacing: 1.0,
// crossAxisSpacing: 1.0,
              crossAxisCount: 2,
              children: List.generate(photo.length, (index) {
                return Container(
                    child: Image(image: AssetImage(photo[index].plantImage)));
              }),
            ),
          )
        ],
      ),
    );
  }
}
