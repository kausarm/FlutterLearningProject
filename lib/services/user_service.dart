import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kausar/models/user_model.dart';

class UserService {
  CollectionReference _UserReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _UserReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
      });
    } catch (e) {
      throw e;
    }
  }

  getUserById(String uid) {}
}
