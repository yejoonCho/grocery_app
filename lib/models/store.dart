import 'package:cloud_firestore/cloud_firestore.dart';

class Store {
  String? name;
  String? address;
  DocumentReference? reference;

  Store(this.name, this.address, [this.reference]);

  String get storeId {
    return reference!.id;
  }

  Map<String, dynamic> toMap() {
    return {"name": name, "address": address};
  }
}
