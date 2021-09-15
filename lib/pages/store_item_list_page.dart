import 'package:flutter/material.dart';

class StoreItemListPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _saveStoreItem() {}

  void _clearTextBoxes() {
    _nameController.clear();
    _priceController.clear();
    _quantityController.clear();
  }

  Widget _buildStoreItems() {
    return Container();
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(children: [
          TextFormField(
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Field cannot be empty";
              }
              return 'null';
            },
            decoration: InputDecoration(hintText: "Enter store item"),
          ),
          TextFormField(
            controller: _priceController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Field cannot be empty";
              }
              return 'null';
            },
            decoration: InputDecoration(hintText: "Enter price"),
          ),
          TextFormField(
            controller: _quantityController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Field cannot be empty";
              }
              return 'null';
            },
            decoration: InputDecoration(hintText: "Enter quantity"),
          ),
          ElevatedButton(
            child: Text("Save", style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
          Expanded(child: _buildStoreItems())
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Store name"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
              },
            )),
        body: _buildBody());
  }
}
