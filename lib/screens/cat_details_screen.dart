import 'package:cat_app/model/cat.dart';
import 'package:cat_app/widgets/cat_details.dart';
import 'package:flutter/material.dart';

 
class CatDetailsScreen extends StatelessWidget {
  final Cats cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 219, 4, 194),
      ),

      body: CatDetailsWidget(cat: cat),  
    );
  }
}

