import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Vice City', 'San Andreas', 'GTA V', 'GTA VI'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Tipo 1'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          ...options.map((e) => 
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text( e ),
            ),
          ).toList()

        ],
      )
    );
  }
}