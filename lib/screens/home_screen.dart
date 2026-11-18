import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon( Icons.piano),
          title: Text('Nombre de ruta'),
          onTap: () {
            
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: 5
      )
    );
  }
}