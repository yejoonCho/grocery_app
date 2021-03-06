import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:grocery_app/models/store.dart';

class AddStoreViewModel extends ChangeNotifier {
  String storeName = "";
  String storeAddress = "";
  String message = "";

  Future<bool> saveStore() async {
    bool isSaved = false;
    final store = Store(storeName, storeAddress);
    try {
      await FirebaseFirestore.instance.collection("stores").add(store.toMap());
      isSaved = true;
      message = "Store has been saved";
    } catch (e) {
      message = "Error occured!";
    }
    notifyListeners();
    return isSaved;
  }
}
