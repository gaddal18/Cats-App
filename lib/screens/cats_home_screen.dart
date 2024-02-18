
import 'package:cat_app/main.dart';
import 'package:cat_app/widgets/cat_card.dart';
import 'package:flutter/material.dart';

class CatsHomeScreen extends StatelessWidget { 
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cats",),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 219, 4, 194),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.white,))],
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemCount: cats.length,
      itemBuilder: (context, index) {
        final cat = cats[index];
        return CatCard(cat: cat);
      }
      
      )

    );
  }
}

