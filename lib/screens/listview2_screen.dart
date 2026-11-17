import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Vice City', 'San Andreas', 'GTA V', 'GTA VI'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Tipo 2'),
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