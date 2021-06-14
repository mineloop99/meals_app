import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeAgr =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final categoryTitle = routeAgr['title'];
    final categoryId = routeAgr['id'];

    final categoriesMeal = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
      ),
      body: ListView.builder(
        itemCount: categoriesMeal.length,
        itemBuilder: (context, index) => MealItem(
          id: categoriesMeal[index].id,
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
