import 'package:flutter/material.dart';
import '../models/grocery_item.dart';

class GroceryCard extends StatelessWidget {
  final GroceryItem item;

  const GroceryCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black12,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),

        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.deepPurple.shade50,
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.deepPurple,
          ),
        ),

        title: Text(
          item.app,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.category),

            const SizedBox(height: 4),

            Text(
              "₹${item.price} | ⭐ ${item.rating} | ${item.delivery}",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}