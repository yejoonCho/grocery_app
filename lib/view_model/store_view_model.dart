import 'package:grocery_app/models/store.dart';

class StoreViewModel {
  Store? store;

  StoreViewModel({this.store});

  String get storeId {
    return store!.storeId;
  }

  String? get name {
    return store!.name;
  }

  String? get address {
    return store!.address;
  }
}
