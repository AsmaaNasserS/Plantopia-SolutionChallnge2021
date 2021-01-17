import 'dart:html';

class Posts{

  Url photo;
  String description;
  String userID;
  String postID;
  List<Posts> post;


  Posts({this.photo, this.description, this.userID, this.postID, this.post});

  void addUser(Posts  posts){
    post.add(posts);
  }


  List<Posts> retrieveUsers(Posts posts){
    return post ;
  }

  void removeUser(Posts posts){
    post.remove(post);
  }

}