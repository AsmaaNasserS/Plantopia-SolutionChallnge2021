

import 'package:gp_app/service/Users.dart';

class Likes{

  int inspire;
  int love;
  String userID;
  List<Users> usersThatMadeLove;
  List<Users> usersThatMadeInspire;
  String postID;

  Likes({this.inspire, this.love, this.userID, this.usersThatMadeLove,
      this.usersThatMadeInspire, this.postID});


  addUserThatMadeLove(Users user){
    usersThatMadeLove.add(user);
  }
  addUserThatMadeInspire(Users user){
    usersThatMadeLove.add(user);
  }

  void removeUsersThatMadeLove(Users user){
      usersThatMadeLove.remove(user);
  }
  void removeUsersThatMadeInspire(Users user){
      usersThatMadeInspire.remove(user);
  }
  List  retrieveUsersThatMadeLove(Users user){
    return  usersThatMadeLove;
  }

  List  retrieveUsersThatMade(Users user){
    return  usersThatMadeInspire;
  }
}