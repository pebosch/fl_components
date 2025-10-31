import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Tipo 2'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title: Text(e),
          ),).toList()
          
        ],
      )
    );
  }
}