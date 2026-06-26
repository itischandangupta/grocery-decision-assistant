import '../models/grocery_item.dart';

class RecommendationService {
  static GroceryItem getBestChoice(List<GroceryItem> items) {
    items.sort((a, b) => a.price.compareTo(b.price));
    return items.first;
  }
}