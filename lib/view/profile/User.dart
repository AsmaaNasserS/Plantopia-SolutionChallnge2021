class User{
  var UserName;
  var UserImage;
  var NoOfPosts;
  var NoOfFollowers;
  var NoOfFollowing;
  var bio;

  User({this.UserImage, this.UserName , this.NoOfFollowers , this.NoOfFollowing , this.NoOfPosts , this.bio});

}

List<User> users=[

  User(
   UserName: 'Mayan',
   UserImage: 'images/expert1.png',
   NoOfPosts: '20',
   NoOfFollowers: '302',
   NoOfFollowing: '411',
   bio: 'ana zhe2tttttttttttttttttttttt',
  ),

  User(
    UserName: 'Mayar',
    UserImage: 'expert2.png',
    NoOfPosts: '20',
    NoOfFollowers: '302',
    NoOfFollowing: '411',
    bio: 'ana zhe2tttttttttttttttttttttt',
  )

];