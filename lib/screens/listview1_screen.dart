import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview1 Tipo 1'),
      ),
      body: ListView(
        children: [
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),

        ],
      )
    );
  }
}