import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:meal_app/screens/cat_meal_screen.dart';
import 'screens/categoris_screen.dart';
import './providers/products_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MealProvider(),
      child: MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'RobotoCondensed')),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue)
              .copyWith(secondary: Colors.amber),
        ),
        home: const CategoriesScreen(),
        routes: {
          //if i remove the the routes  i can instead '/':(ctx) =>function()
          //String:function()
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        },
      ),
    );
  }
}
