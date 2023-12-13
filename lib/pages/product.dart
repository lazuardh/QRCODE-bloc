import 'package:flutter/material.dart';

class ProductPages extends StatelessWidget {
  const ProductPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text("${index + 1}"),
            ),
            title: Text("Product ${index + 1}"),
          );
        },
      ),
    );
  }
}
