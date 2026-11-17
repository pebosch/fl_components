import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Vice City', 'San Andreas', 'GTA V', 'GTA VI'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview1 Tipo 1'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.piano),
            title: Text('Hola Mundo'),
          ),

        ],
      )
    );
  }
}