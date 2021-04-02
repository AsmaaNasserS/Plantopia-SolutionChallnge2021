
import 'package:gp_app/service/Users.dart';

class Posts{

  String photo;
  String description;
  String userID;
  String postID;
   List<Users> likes;
   List<Users> commentOnPost;


  Posts({this.photo, this.description, this.userID, this.postID,this.commentOnPost,this.likes});

 /* void addPost(Posts  posts){
    likes.add(posts);
  }


  List<Posts> retrievePost(){
    return likes ;
  }
  void removePost(Posts posts){
    likes.remove(likes);
  }

 void addComment(Comments  comment){
   commentOnPost.add(comment);
  }


  List<Comments> retrieveComment(){
    return commentOnPost ;
  }

  void removeComment(Comments comment ){
    commentOnPost.remove(comment);
  }*/
  Posts.formatJson(Map<dynamic,dynamic>map){
    if(map== null)
      return;

    commentOnPost=map['commentOnPost'];
    likes=map['likes'];
    postID=map['postID'];
    userID=map['userID'];
    photo=map['photo'];
    description=map['description'];
  }

  toJson() {
    return {
      'commentOnPost': commentOnPost,
      'likes': likes,
      'postID': postID,
      'userID': userID,
      'photo': photo,
      'description': description,
    };
  }
}