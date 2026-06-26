import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../services/recommendation_service.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final best = RecommendationService.getBestChoice(groceryItems);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Best Recommendation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const Text(
              "🏆 Best Grocery App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Card(
              child: ListTile(
                title: Text(best.app),
                subtitle: Text(
                  "⭐ ${best.rating}\n${best.delivery}",
                ),
                trailing: Text(
                  "₹${best.price}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Reason",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text("✅ Lowest Price"),
            const Text("✅ Good Rating"),
            const Text("✅ Recommended"),

          ],
        ),
      ),
    );
  }
}