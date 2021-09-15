import 'package:flutter/material.dart';
import 'package:grocery_app/view_model/add_store_view_model.dart';

class AddStorePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  AddStoreViewModel? _addStoreVM = AddStoreViewModel();

  void _saveStore(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _addStoreVM!.saveStore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Store")),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  onChanged: (value) => _addStoreVM!.storeName = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter sotre name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Enter store name")),
              TextFormField(
                  onChanged: (value) => _addStoreVM!.storeAddress = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter store address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Enter store address")),
              ElevatedButton(
                child: Text("Save", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  _saveStore(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
