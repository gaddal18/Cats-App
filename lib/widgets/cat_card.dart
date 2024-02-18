import 'package:cat_app/model/cat.dart';
import 'package:cat_app/screens/cat_details_screen.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  final Cats cat;
  const CatCard({super.key,
  required this.cat, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
        child: Column(
        children: [
          // Car image
          Expanded(
            child: Image.network(cat.imageLink,
            width: double.infinity,
            fit: BoxFit.cover),
          ),
          // Car name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cat.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 219, 4, 194)
              ),
              ),
          ),
        ],
      )),
    );
  }
}