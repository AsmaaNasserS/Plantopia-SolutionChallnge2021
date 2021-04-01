
class User{

  String  userName;
  String   title;
  String   email;
  String   password;
  int      role;
  String      userID;
  String      photo;
  List<User> users;

  User({this.userName, this.title, this.email, this.password, this.role,
      this.userID, this.photo, this.users});

  void addUser(User user){
     users.add(user);
   }


   List<User> retrieveUsers(){
    return users ;
   }

   void deleteUser(User user){
     users.remove(user);
   }

}