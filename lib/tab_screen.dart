import 'package:flutter/material.dart';

import 'categoris_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Meals'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.category), text: 'Categories'),
                Tab(icon: Icon(Icons.favorite_rounded), text: 'Favorite'),
                Tab(icon: Icon(Icons.star), text: 'Stars'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CategoriesScreen(),
              CategoriesScreen(),
              CategoriesScreen(),
            ],
          ),
        ),
        length: 2);
  }
}
