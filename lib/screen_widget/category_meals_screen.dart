import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeAgr =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final categoryTitle = routeAgr['title'];
    final categoryId = routeAgr['id'];
    final categoryColor = routeAgr['color'] as Color;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
        backgroundColor: categoryColor,
      ),
      body: ListView.builder(itemCount: ,itemBuilder: (context, builder) {

      }),
    );
  }
}
