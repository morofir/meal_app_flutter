import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = routArgs['id'];
    final title = routArgs['title'];
    print(id);
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: const Center(
          child: Text('Repcipe for: '),
        ));
  }
}
