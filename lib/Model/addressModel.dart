class UserAddressModel {
  String uid;
  String name;
  String address;
  String houseNo;
  String city;
  int pincode;
  String area;
  String state;
  String landmark;
  int phoneNumber;

  UserAddressModel(
      {required this.uid,
      required this.name,
      required this.address,
      required this.houseNo,
      required this.city,
      required this.pincode,
      required this.area,
      required this.state,
      required this.landmark,
      required this.phoneNumber});

  factory UserAddressModel.fromJson(Map<String, dynamic> json) {
    return UserAddressModel(
        uid: json["uid"],
        name: json["name"],
        address: json["address"],
        houseNo: json["houseNo"],
        city: json["city"],
        pincode: json["pincode"],
        area: json["area"],
        state: json["state"],
        landmark: json["landmark"],
        phoneNumber: json["phoneNumber"]);
  }
  Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "address": address,
        "houseNo":houseNo,
        "city":city,
        "pincode":pincode,
        "area":area,
        "state":state,
        "landmark":landmark,
        "phoneNumber":phoneNumber
      };
}
