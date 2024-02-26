import 'package:hardware_pro/Model/productmodel.dart';

class SerialNumberModel {
  String serialNumber;
  ProductModel productModel;

  SerialNumberModel({required this.productModel, required this.serialNumber});
  Map<String, dynamic> tojson() => {
        "productModel": productModel.toJson(productModel.productId),
        "serialNumber": serialNumber
      };

  factory SerialNumberModel.fromJson(Map<String, dynamic> json) {
    return SerialNumberModel(
        productModel: ProductModel.fromJson(json["productModel"]), serialNumber: json["serialNumber"]);
  }
}
