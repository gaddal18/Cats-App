import 'package:cat_app/model/cat.dart';
import 'package:flutter/material.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cats cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool isNameColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        // cat image
        Image.network(widget.cat.imageLink),
        
        // cat name
        Text(
          widget.cat.name, 
          style: TextStyle(
            fontSize: 32, 
            fontWeight: FontWeight.bold, 
            color: isNameColored ?  
            Color.fromARGB(255, 219, 4, 194) : Colors.black
            ),
          ),
        
        // cat info
        Text('Origin: ${widget.cat.origin}'),
        Text('Max Weight: ${widget.cat.maxWeight}'),
        Text('Min Weight: ${widget.cat.minWeight}'),
        Text('Length: ${widget.cat.length}'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isNameColored = !isNameColored;
            });
        }, 
        child: Text('Change Name Color'))
      ],
    );
  }
}