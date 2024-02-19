import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hardware_pro/Model/addressModel.dart';
import 'package:hardware_pro/Model/user_model.dart';

class FirestoreDatabase with ChangeNotifier {
  final db = FirebaseFirestore.instance;

  //-------------------------------create-----------------------

  addUser(uid, UserModel usermodel) async {
    await db.collection("User").doc(uid).set(usermodel.toJson(
          uid,
        ));
  }

  addNewAddress(UserAddressModel userAddressModel) {
    final docs = db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("adress")
        .doc();
    docs.set(userAddressModel.toJson(docs.id));
    notifyListeners();
  }

  //-------------------------------update-----------------------

  //------------------------------delete-------------------------

  //--------------------------------read-------------------------
  UserModel? userModel;
  fetchUserData(uid) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await db.collection("User").doc(uid).get();
    if (snapshot.exists) {
      userModel = UserModel.fromJson(snapshot.data()!);
    }
  }

  List<UserAddressModel> userAdressList = [];
  fetchAllAddress() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("adress")
        .get();
    userAdressList = snapshot.docs.map((e) {
      return UserAddressModel.fromJson(e.data());
    }).toList();
    print(userAdressList.length);
  }
}
