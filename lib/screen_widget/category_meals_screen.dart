import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeAgr =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final categoryTitle = routeAgr['title'];
    final categoryId = routeAgr['id'];
    final categoryColor = routeAgr['color'] as Color;

    final categoriesMeal = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
        backgroundColor: categoryColor,
      ),
      body: ListView.builder(
        itemCount: categoriesMeal.length,
        itemBuilder: (context, index) => MealItem(
          title: categoriesMeal[index].title,
          imageUrl: categoriesMeal[index].imageUrl,
          duration: categoriesMeal[index].duration,
          affordability: categoriesMeal[index].affordability,
          complexity: categoriesMeal[index].complexity,
        ),
      ),
    );
  }
}
