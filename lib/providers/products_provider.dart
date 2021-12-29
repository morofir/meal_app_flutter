import 'package:flutter/material.dart';

class Meal with ChangeNotifier {
  List<Meal> _meals = []; //not final, will change

  List<Meal> get meals {
    return [..._meals]; //this is a copy of items
  }

  void addMeal(Meal meal) {
    _meals.add(meal);
    notifyListeners(); //always need to notify about updates
  }
}
