class UserModel {
  final String uid;
  final String name;
  String id;
  String address;
  final String email;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    this.id = "",
    this.address = ""
  });

  var shopCar = [];
}