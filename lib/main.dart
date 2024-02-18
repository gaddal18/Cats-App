
import 'package:cat_app/data/all_cats.dart';
import 'package:cat_app/model/cat.dart';
import 'package:cat_app/screens/cats_home_screen.dart';
import 'package:flutter/material.dart';

final cats = allCats.map<Cats>((jsonCat) => Cats.fromJson(jsonCat)).toList();


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: CatDetailsWidget(cat: cats[1]),
      home: CatsHomeScreen(),
    );
  }
} 

 