import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gp_app/service/Posts.dart';


class FireStorePost{
  static final CollectionReference _postCollection = FirebaseFirestore.instance.collection('Post');
  static Future<void> addPost(Posts post) async{
    return await _postCollection.doc(post.postID).set(post.toJson());
  }


  static int postsList;

  static  Future<int> retrieveAllPosts() async{
    await   FirebaseFirestore.instance.collection('Post').get().then((snapshot) => {
      print(snapshot.docs.asMap().entries)   ,
    });



  }

/*forEach((element)=> {
        postsList.add(element),
    //  Posts.formatJson(element.data())
    })*/

}