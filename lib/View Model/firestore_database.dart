import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hardware_pro/Model/user_model.dart';

class FirestoreDatabase {
  final db = FirebaseFirestore.instance;

  //-------------------------------create-----------------------

  addUser(uid, UserModel usermodel) async {
   await db.collection("User").doc(uid).set(usermodel.toJson(uid));
  }

  //-------------------------------update-----------------------

  //------------------------------delete-------------------------

  //--------------------------------read-------------------------
}
