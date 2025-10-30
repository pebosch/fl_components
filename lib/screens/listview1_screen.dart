import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Tipo 1'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            leading: Icon(Icons.access_alarm_rounded),
            title: Text(e),
          ),).toList()
          
        ],
      )
    );
  }
}