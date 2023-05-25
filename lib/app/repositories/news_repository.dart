import 'package:cloud_firestore/cloud_firestore.dart';

class NewsRepository {
  //static instance of firebase
  static final firebaseInstance = FirebaseFirestore.instance;

  //collection references
  static final CollectionReference users = firebaseInstance.collection('users');

  static final CollectionReference categories =
      firebaseInstance.collection('categories');

  static final CollectionReference whatsNew =
      firebaseInstance.collection('whatsnew');
  static final CollectionReference trending =
      firebaseInstance.collection('trending');

  static final CollectionReference banners =
      firebaseInstance.collection('banners');

  //get categories
  Future<List<QueryDocumentSnapshot>> getCategories() async {
    final result = await categories.get();
    print('Categories: ' + result.docs.length.toString());
    return result.docs;
  }

  //get whatsnew
  Future<List<QueryDocumentSnapshot>> getWhatsNew() async {
    final result = await whatsNew.get();
    return result.docs;
  }

  Future<List<QueryDocumentSnapshot>> getTrending() async {
    final result = await trending.get();
    return result.docs;
  }

  //get banner image
  Future<List<DocumentSnapshot>> getBannerImage() async {
    final results = await banners.get();
    return results.docs;
  }
}
