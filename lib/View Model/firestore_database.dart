import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hardware_pro/Model/addressModel.dart';
import 'package:hardware_pro/Model/cartmodel.dart';
import 'package:hardware_pro/Model/productmodel.dart';
import 'package:hardware_pro/Model/user_model.dart';

class FirestoreDatabase with ChangeNotifier {
  final db = FirebaseFirestore.instance;

  //-------------------------------create-----------------------

  Future addUser(uid, UserModel usermodel) async {
    await db.collection("User").doc(uid).set(usermodel.toJson(
          uid,
        ));
  }

  Future addNewAddress(UserAddressModel userAddressModel) async {
    final docs = db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("adress")
        .doc();
    await docs.set(userAddressModel.toJson(docs.id));
    notifyListeners();
  }

  Future registerNewWarrenty() async {
    final docs = db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("warrenty")
        .doc();
  }

  Future addToCart(CartModel cartModel, proId) async {
    final docs = db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Cart")
        .doc(proId);
    await docs.set(cartModel.toJson(docs.id, proId));
  }

  Future updateCartData(docId, quantity, total) async {
    db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Cart")
        .doc(docId)
        .update({"quantity": quantity, "totalAmount": total});
    notifyListeners();
  }

  //-------------------------------update-----------------------

  //------------------------------delete-------------------------
  deleteFromCart(docId) async {
    db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Cart")
        .doc(docId)
        .delete();
    notifyListeners();
  }

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
    // userAdressList.sort();
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

  List<ProductModel> productList = [];
  fetchAllProduct() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await db.collection("product").get();

    productList = snapshot.docs.map((e) {
      return ProductModel.fromJson(e.data());
    }).toList();
    print(productList.length);
  }

  List<CartModel> cartmodelList = [];
  fetchCartProduct() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await db
        .collection("User")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Cart")
        .get();
    cartmodelList = snapshot.docs.map((e) {
      return CartModel.fromJson(e.data());
    }).toList();
  }
}
