import 'package:delivery_app/src/model/user_model.dart';
import 'package:delivery_app/src/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserModel user) => _cloudFirestoreAPI.updateUserData(user);
  void getUserDataFirestore() => _cloudFirestoreAPI.getUser();
  Future<void> updateAddressFirestore(String address) => _cloudFirestoreAPI.updateAddress(address);
  void getShopsDataFirestore() => _cloudFirestoreAPI.getShops();
}