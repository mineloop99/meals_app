import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty)
      return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Text('The favorites'),
        ),
      );
    return ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (context, index) => MealItem(
        id: favoriteMeals[index].id,
        title: favoriteMeals[index].title,
        imageUrl: favoriteMeals[index].imageUrl,
        duration: favoriteMeals[index].duration,
        affordability: favoriteMeals[index].affordability,
        complexity: favoriteMeals[index].complexity,
      ),
    );
  }
}
