import 'package:flutter/material.dart';
import '../widgets/grocery_card.dart';
import '../data/dummy_data.dart';
import 'result_screen.dart';
import '../widgets/compare_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grocery Decision Assistant",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade100,

      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: groceryItems.length,
              itemBuilder: (context, index) {

                final item = groceryItems[index];

                return GroceryCard(item: item);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            child: SizedBox(
              width: double.infinity,
              child: CompareButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ResultScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}