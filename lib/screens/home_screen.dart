import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import 'result_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grocery Decision Assistant"),
      ),

      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: groceryItems.length,
              itemBuilder: (context, index) {

                final item = groceryItems[index];

                return ListTile(
                  title: Text(item.app),
                  subtitle: Text(
                    "₹${item.price} | ⭐ ${item.rating} | ${item.delivery}",
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ResultScreen(),
                    ),
                  );
                },
                child: const Text("Compare"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}