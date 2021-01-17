import 'package:gp_app/services/Users.dart';

class Likes{

  int inspire;
  int love;
  String userID;
  List<User> usersThatMadeLove;
  List<User> usersThatMadeInspire;
  String postID;

  Likes({this.inspire, this.love, this.userID, this.usersThatMadeLove,
      this.usersThatMadeInspire, this.postID});


  addUserThatMadeLove(User user){
    usersThatMadeLove.add(user);
  }
  addUserThatMadeInspire(User user){
    usersThatMadeLove.add(user);
  }

  void removeUsersThatMadeLove(User user){
      usersThatMadeLove.remove(user);
  }
  void removeUsersThatMadeInspire(User user){
      usersThatMadeInspire.remove(user);
  }
  List  retrieveUsersThatMadeLove(User user){
    return  usersThatMadeLove;
  }

  List  retrieveUsersThatMade(User user){
    return  usersThatMadeInspire;
  }
}