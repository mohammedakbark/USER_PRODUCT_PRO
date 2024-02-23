import 'package:hardware_pro/Model/productmodel.dart';

class CartModel {
  String? cartid;

  ProductModel productModel;
  int quantity;
  double totalAmount;

  CartModel(
      { this.cartid,
      required this.productModel,
      required this.quantity,
      required this.totalAmount});

  Map<String, dynamic> toJson(id,proId) => {
        "cartid": id,
        "productModel": productModel.toJson(proId),
        "quantity": quantity,
        "totalAmount": totalAmount
      };
  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
        cartid: json["cartid"],
        productModel: ProductModel.fromJson(json["productModel"]),
        quantity: json["quantity"],
        totalAmount: json["totalAmount"]);
  }
}
