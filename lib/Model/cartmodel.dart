import 'package:hardware_pro/Model/genarate_serial_number_model.dart';
import 'package:hardware_pro/Model/productmodel.dart';

class CartModel {
  String? cartid;
  List<SerialNumberModel> serialNumberMdel;

  int quantity;
  num totalAmount;

  CartModel(
      {this.cartid,
      required this.serialNumberMdel,
      required this.quantity,
      required this.totalAmount});

  Map<String, dynamic> toJson(
    id,
  ) =>
      {
        "cartid": id,
        "serialNumberMdel": serialNumberMdel.map((e) {
          return e.tojson();
        }),
        "quantity": quantity,
        "totalAmount": totalAmount
      };
  factory CartModel.fromJson(Map<String, dynamic> json) {
    var lis = json["serialNumberMdel"] as List;
    return CartModel(
        cartid: json["cartid"],
        serialNumberMdel:
            lis.map((e) => SerialNumberModel.fromJson(e)).toList(),
        quantity: json["quantity"],
        totalAmount: json["totalAmount"]);
  }
}
