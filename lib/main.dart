import 'package:flutter/material.dart';
import './screen_widget/filters_screen.dart';
import './screen_widget/tabs_screen.dart';
import './screen_widget/category_meals_screen.dart';
import './screen_widget/meal_detail_screen.dart';
import './screen_widget/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (_) => TabsScreen(),
        CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (_) => MealDetailScreen(),
        FiltersScreen.routeName: (_) => FiltersScreen(),
      },
      onUnknownRoute: (_) => MaterialPageRoute(
        builder: (_) => CategoriesScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals Orders'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
