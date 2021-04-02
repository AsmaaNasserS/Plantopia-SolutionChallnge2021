class Users{
   static Users obj;
  String   userName;
  String   title;
  String   email;
  String   password;
  int      role;
  String   userID;
  String   photo;
  List<Users> users;

  Users({this.userName, this.title, this.email, this.password, this.role,
      this.userID, this.photo, this.users});

   static  Users getInstance()
   {
     if (obj==null)
       obj = new Users();
     return obj;
   }

  void addUser(Users user){
     users.add(user);
   }


   List<Users> retrieveUsers(){
    return users ;
   }

   void deleteUser(Users user){
     users.remove(user);
   }

  Users.formatJson(Map<dynamic,dynamic>map){
    if(map== null)
      return;
    userName=map['userName'];
    title=map['title'];
    email=map['email'];
    password=map['password'];
    role=map['role'];
    userID=map['userID'];
    photo=map['photo'];
    users=map['users'];
  }

toJson() {
  return {
  'userName': userName,
  'title'   : title,
  'email'   : email,
  'password': password,
  'role'    : role,
  'userID'  : userID,
  'photo'   : photo,
  'users'   : users,
  };

  }















}