import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text('Meals Order'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(
            catData.id,
            catData.title,
            catData.color,
          );
        }).toList(),
      ),
    );
  }
}
