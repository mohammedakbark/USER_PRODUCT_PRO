import 'package:firebase_auth/firebase_auth.dart';
import 'package:hardware_pro/Model/addressModel.dart';
import 'package:hardware_pro/Model/cartmodel.dart';

class OrderModel {
  String? uid;
  String? orderId;
  List<CartModel> cartModel;
  String status;
  String paymentMode;
  int totalAmount;
  String date;
  UserAddressModel userAddressModel;

  OrderModel(
      {required this.cartModel,
      required this.date,
      this.uid,
      required this.userAddressModel,
      required this.totalAmount,
      this.orderId,
      required this.paymentMode,
      required this.status});
  Map<String, dynamic> toJson(id) => {
    "date":date
,        "uid": FirebaseAuth.instance.currentUser!.uid,
        "totalAmount": totalAmount,
        "orderId": id,
        "userAddressModel": userAddressModel.toJson(userAddressModel.addressId),
        "cartModel": cartModel.map((e) => e.toJson(
              e.cartid,
            )),
        "status": status,
        "paymentMode": paymentMode
      };
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    var list = json["cartModel"] as List;
    return OrderModel(
        uid: json["uid"],
        date: json["date"],
        userAddressModel: UserAddressModel.fromJson(json["userAddressModel"]),
        totalAmount: json["totalAmount"],
        cartModel: list.map((cartItem) {
          return CartModel.fromJson(cartItem);
        }).toList(),
        orderId: json["orderId"],
        paymentMode: json["paymentMode"],
        status: json["status"]);
  }
}
