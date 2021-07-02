import 'dart:convert';

import 'dart:io';
class LoginModel{
 bool status = true;
 String message = "Sucess login";
 String token;


 LoginModel.fromJson(Map<String,dynamic> jsonData){
   //status = jsonData['status'];
   //message =jsonData['message'];
   token = jsonData['jwt']!=null? jsonData['jwt']:null;
 }
}

// class RegisterModel{
//   int id;
//   String userName;
//   String pass;
//   RegisterModel.fromJson(Map<String, dynamic> jsonData){
//     id= jsonData['id'];
//   userName  = jsonData['username'];
//   pass = jsonData['password'];
//   }
//
// }

class UserData {
  int id;
  int role;
  String userName;
  String email;
  String phone;
  String title;
  String photo;
  String facebookUrl;
  String token;
  String password;

  UserData.fromJson( Map<String, dynamic> jsonData){
    id = jsonData['id'];
    role = jsonData['role'];
    title = jsonData['title'];
    userName = jsonData['username'];
    email = jsonData['email'];
    phone = jsonData['phone'];
    photo = jsonData['photo'];
    facebookUrl = jsonData['facebookUrl'];
    token = jsonData['token'];
    password =jsonData['password'];


  }


}



