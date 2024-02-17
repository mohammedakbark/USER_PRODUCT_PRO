import 'package:hardware_pro/Model/addressModel.dart';

class UserModel {
  String? uid;
  String image;
  String userName;
  String email;
  List<UserAddressModel> userAddress;
  UserModel(
      { this.uid,
      required this.image,
      required this.userName,
      required this.email,
      required this.userAddress});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        uid: json["uid"],
        image: json["image"],
        userName: json["userName"],
        email: json["email"],
        userAddress: json["userAddress"]);
  }
  Map<String, dynamic> toJson(uid) => {
        "uid": uid,
        "image": image,
        "userName": userName,
        "email": email,
        "userAddress": userAddress
      };
}
