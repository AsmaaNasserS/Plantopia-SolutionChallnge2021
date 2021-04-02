import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gp_app/service/Users.dart';


class FireStoreUser{
  static final CollectionReference _userCollection = FirebaseFirestore.instance.collection('User');
  static Future<void> addUser(Users user) async{
    Users.obj.userID=user.userID;
    return await _userCollection.doc(user.userID).set(user.toJson());
  }
  static Future<void> addUserName(){
    return  _userCollection.doc().get();
    /*  return  _userCollection.doc(Users.getInstance().userID).set(
      {
        'userName': userNam,
      }
    );*/
  }}