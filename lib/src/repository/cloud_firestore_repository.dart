import 'package:delivery_app/src/model/user_model.dart';
import 'package:delivery_app/src/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserModel user) => _cloudFirestoreAPI.updateUserData(user);
  void getShopsDataFirestore() => _cloudFirestoreAPI.getShops();
}