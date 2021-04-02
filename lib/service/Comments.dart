

import 'package:gp_app/service/Users.dart';

class Comments{
  String commentID;
  String userID;
  String postID;
  List<Users> usersThatMadeComment;

  void addUserComment(Users user){
    usersThatMadeComment.add(user);
  }


  Comments({this.commentID, this.userID, this.postID, this.usersThatMadeComment});

  List<Users> retrieveUsersComments(Users user){
    return usersThatMadeComment ;
  }

  void deleteUserComment(Users user){
    usersThatMadeComment.remove(user);
  }



}