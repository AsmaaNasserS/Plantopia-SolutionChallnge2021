import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gp_app/service/Garden.dart';
import 'package:gp_app/view/profile/garden_view.dart';
import 'package:gp_app/view/widgets/Appicon.dart';

import 'package:gp_app/const.dart';
import 'package:gp_app/view/MarketPlaceScreens/MyStore.dart';
import 'package:gp_app/view/profile/followers_grid.dart';
import 'package:gp_app/view/profile/following.dart';

import '../expert/ExpertCard.dart';
import 'Photos.dart';
import 'User.dart';

class ownProfile extends StatefulWidget {
  static const String id = 'profilepage';
  var UserName;
  var UserImage;
  var NoOfPosts;
  var NoOfFollowers;
  var NoOfFollowing;
  var bio;

  ownProfile({this.UserImage,
    this.UserName,
    this.NoOfFollowers,
    this.NoOfFollowing,
    this.NoOfPosts,
    this.bio});

  @override
  _ownProfileState createState() =>
      _ownProfileState(
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

  _ownProfileState({this.UserImage,
    this.UserName,
    this.NoOfFollowers,
    this.NoOfFollowing,
    this.NoOfPosts,
    this.bio});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery
        .of(context)
        .size;
    //
    return Scaffold(
      // body:
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: false,
        backgroundColor: kInActiveBackButtonColor,
        elevation: 0,
        title: Text(
          'username',
          style: kWelcomeScreensTitleText,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                // backwardsCompatibility: false,
                //snap: true,
                // forceElevated: true,
//stretch: true,
                pinned: true,
                bottom: TabBar(
                  labelColor: kInActivelogInButtonColor,
                  indicatorColor: kInActivelogInButtonColor,
                  unselectedLabelColor: Colors.grey.shade600,
                  tabs: [

                    Tab(child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [Icon(Icons.photo,),SizedBox(width: 6,), Text('Posts')],)),
                    Tab(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(MyFlutterApp.plant,),SizedBox(width: 6,),
                        Text('My Garden')
                      ],),)
                  ],
                ),
                expandedHeight:mq.height * .5,
                flexibleSpace: FlexibleSpaceBar(
                   collapseMode: CollapseMode.pin,
                  background: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Column(
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
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, FollowersGrid.id);
                              },
                              child: Column(
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
                            ),
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, FollowingGrid.id);
                                  },
                                  child: Column(
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
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },

          //
          //     Column(
          //       children: [
          //         Container(
          //           height: 363,
          //           width: 500,
          //           padding:
          //               EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(15),
          //             color: kBackgroundColor,
          //           ),
          //
          //   ];
          // },
          body: TabBarView(children: [
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(1.5),
                childAspectRatio: 1,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1.0,
                crossAxisCount: 2,
                children: List.generate(
                  photo.length,
                      (index) {
                    return GestureDetector(
                      onTap: (){
                        //todo: go to post and in its order with all posts
                      },
                      child: Image(
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          photo[index].plantImage,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: GardenView(),
            )
          ]),
        ),
      ),
    );

    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    // children: [
    //         Container( // profile header
    //
    //
    //         child: ExpertCard(
    //         details:
    //         Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           ButtonTheme(
    //             buttonColor: kInActiveOrangeColor,
    //             minWidth: 150,
    //             height: 40.0,
    //             child: RaisedButton(
    //               onPressed: () {},
    //               child: Text(
    //                 "Photos",
    //                 style: klogInButtonTextStyle,
    //               ),
    //               shape: new RoundedRectangleBorder(
    //                 borderRadius: new BorderRadius.circular(30.0),
    //               ),
    //             ),
    //           ),
    //           ButtonTheme(
    //             buttonColor: kInActiveOrangeColor,
    //             minWidth: 150,
    //             height: 40.0,
    //             child: RaisedButton(
    //               onPressed: () {},
    //               child: Text(
    //                 "My garden",
    //                 style: klogInButtonTextStyle,
    //               ),
    //               shape: new RoundedRectangleBorder(
    //                 borderRadius: new BorderRadius.circular(30.0),
    //               ),
    //             ),
    //           )
    //         ],
    //       )
    //
    //   ),
    // ),

    // Container(
    // //posts grid
    // height: 320,
    // width: 400,
    // child:
    // )
  }
}
