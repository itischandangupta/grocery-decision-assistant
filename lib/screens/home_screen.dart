import '../data/dummy_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grocery Decision Assistant"),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {

          final item = groceryItems[index];

          return ListTile(
            title: Text(item.app),
            subtitle: Text(
              "₹${item.price} | Rating ${item.rating} | ${item.delivery}",
            ),
          );
        },
      ),
    );
  }
}