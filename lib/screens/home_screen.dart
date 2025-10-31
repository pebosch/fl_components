import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
        elevation: 50,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.mark_chat_unread),
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