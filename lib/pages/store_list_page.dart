import 'package:flutter/material.dart';

class StoreListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery App"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
          )
        ],
      ),
    );
  }
}
