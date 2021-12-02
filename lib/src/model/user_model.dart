class UserModel {
  String uid;
  String name;
  String id;
  String address;
  String email;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    this.id = "",
    this.address = ""
  });

  var shopCar = [];
}