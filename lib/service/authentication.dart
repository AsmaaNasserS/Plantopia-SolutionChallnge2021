
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gp_app/firestore/FireStoreUser.dart';
import 'package:gp_app/service/Users.dart';

class AuthenticationService{
 final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

 Stream<User> get authStateChanges => _firebaseAuth.idTokenChanges();
Future<bool> signIn({String email, String password}) async {
   try {
   await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
print("Signed up");
     return true;
   } on FirebaseAuthException catch (e) {
     print("not Signed up");
     return false;
   }

 }

 Future<String> signUp({String email, String password})async{
   try{
     final user =   await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
     addUser(user);
     print("Signed up");
    return "Signed up";
   } on FirebaseAuthException catch (e) {
     return e.message;
   }

 }
 Future<void> signOut() async {
   await _firebaseAuth.signOut();
 }

  Future<void> addUser(UserCredential user )async {
   return await FireStoreUser.addUser(
       Users(
         userID:user.user.uid,
         email: user.user.email,
       )
   );



}}
