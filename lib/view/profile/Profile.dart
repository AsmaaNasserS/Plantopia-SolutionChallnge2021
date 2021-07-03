import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_app/firestore/FireStorePost.dart';
import 'package:gp_app/service/Posts.dart';
import 'package:gp_app/service/Users.dart';
import 'package:gp_app/service/authentication.dart';
import 'package:gp_app/view/expert/Articles.dart';
import 'package:gp_app/view/expert/ArticlesCard.dart';
import 'package:gp_app/view/expert/ArticlePage.dart';
import 'package:gp_app/view/profile/Listprofile.dart';
import 'package:gp_app/view/profile/NewPostScreen.dart';
import 'package:gp_app/view/profile/articles_List_View.dart';
import 'package:gp_app/view/profile/postcard.dart';
import 'package:gp_app/view/widgets/articles_HomeGrid.dart';
import 'package:gp_app/view/widgets/side_drawer.dart';
import 'package:provider/provider.dart';
import '../../const.dart';
import 'CommentPage.dart';

class Profile extends StatefulWidget {
  static const String id = 'HomePage';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var url = 'http://localhost:8181/plant/expert';

  FireStorePost firestore;
  bool liked = false;

  _likedPost() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery
        .of(context)
        .size;
    Widget article = Container(
      height: mediaQuery.height * .22,
      child: HomeArticles(mediaQuery: mediaQuery),
    );

    _commentPage(String image) {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CommentPage(image: image)));
      });
    }

    return Scaffold(
      drawer: sideDrawer(),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.add_photo_alternate_rounded), onPressed: () {
            Navigator.pushNamed(context, NewPostScreen.id);
            //todo: choose image then navigate to new post screen
          })
        ],
        backgroundColor: appBarColor,
        title: Text(
          "News Feed",
          style: TextStyle(
            fontSize: 25.00,
            fontWeight: FontWeight.bold,
            color: KTextLightColour,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(top: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Most popular articles",
                    style: TextStyle(
                      fontSize: 25.00,
                      fontWeight: FontWeight.bold,
                      color: KTextLightColour,
                    ),
                  ),
                  TextButton(
                    //padding: EdgeInsets.only(left: 12),
                    onPressed: () {
                      Navigator.pushNamed(context, ArticlesListView.id);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('All articles', style: TextStyle(
                          decoration: TextDecoration.underline, fontSize: 18.00,
                          fontWeight: FontWeight.bold,
                          color: KTextLightColour,),),
                        Icon(Icons.navigate_next, color: KTextLightColour)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            article,
            Container(
              child: Column(
                  children: List.generate(x.length, (index) {
                    return PostCard(
                      details: Container(
                        width: mediaQuery.width,
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: mediaQuery.width,
                                    child: ListTile(
                                      title: Text(
                                        (x[index].name),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                        //style: kWelcomeScreensTitleText,
                                      ),
                                      subtitle: Text(
                                        ("mennasayed@gmail.com"),
                                      ),
                                      leading: CircleAvatar(
                                          child: ClipOval(
                                            child: Image(
                                              height: 50.0,
                                              width: 50.0,
                                              image: AssetImage(
                                                x[index].image,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      trailing: Container(
                                        // padding: EdgeInsets.only(left: 40),
                                          width: mediaQuery.width * 0.2,
                                          height: 30,
                                          child: GestureDetector(
                                            onTap: () async {
                                              print(
                                                  "sssssssssssssssssssssssssssssssss");
                                              print(
                                                  FireStorePost
                                                      .retrieveAllPosts());
                                              print(
                                                  "sssssssssssssssssssssssssssssssss");
                                              //todo follow
                                              //todo هبد
                                              /* context
                                                  .read<AuthenticationService>()
                                                  .signOut();*/
                                              /* final FirebaseAuth auth = FirebaseAuth.instance;
                                              var now = new DateTime.now();

                                              Posts post = Posts(description: "fffff" ,photo: "" ,userID: auth.currentUser.uid, postID: now.toString());
                                              //   print(post.toJson());
                                              await  FireStorePost.addPost(post);
*/
                                            },
                                            child: Material(
                                              borderRadius:
                                              BorderRadius.circular(20.0),
                                              color: kActiveOrangeColor,
                                              child: Center(
                                                child: Text('Follow',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          )),
                                    ),
                                  )
                                  //SizedBox(height: 15,),
                                ],
                              ),
                            ),
                            Container(
                              height: mediaQuery.height * 0.45,
                              width: mediaQuery.width * 0.95,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  image: NetworkImage(
                                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/yucca-cane-plant-in-a-pot-on-a-white-background-royalty-free-image-1580856558.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: mediaQuery.width,
                              //    color: Colors.black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          icon: Icon(
                                              liked
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: liked
                                                  ? Colors.green
                                                  : Colors.green),
                                          iconSize: 30.0,
                                          onPressed: () =>
                                          {
                                            _likedPost(),
                                            //todo postid liked bssssssssss
                                          }),
                                      IconButton(
                                        icon: Icon(Icons.chat_bubble_outline),
                                        iconSize: 30.0,
                                        color: Colors.green,
                                        onPressed: () {
                                          _commentPage(x[index].image);
                                        },
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.bookmark_border),
                                    iconSize: 30.0,
                                    color: Colors.green,
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(
                                              milliseconds: 1000),
                                          behavior: SnackBarBehavior.floating,
                                          content: Text(
                                              'You have saved this post'),
                                          action: SnackBarAction(
                                            label: 'UNDO',
                                            onPressed: () {
                                              print("saved!");
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: mediaQuery.width,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(x[index].name, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.grey.shade800),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  //todo text flow over
                                  Text(
                                    x[index].description,
                                    style: kTextDescription.copyWith(
                                        color: Colors.grey.shade600),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      //TODO LOVE   onPress: ,
                    );
                  })),
            ),
          ]),
        ),
      ),
    );
  }
}
