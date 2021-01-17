import 'package:gp_app/services/Users.dart';

class Comments{
  String commentID;
  String userID;
  String postID;
  List<User> usersThatMadeComment;

  void addUserComment(User user){
    usersThatMadeComment.add(user);
  }


  Comments({this.commentID, this.userID, this.postID, this.usersThatMadeComment});

  List<User> retrieveUsersComments(User user){
    return usersThatMadeComment ;
  }

  void deleteUserComment(User user){
    usersThatMadeComment.remove(user);
  }



}