import 'package:fl_components/screens/screens.dart';
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
            //final route = MaterialPageRoute(builder: (context) => Listview1Screen());
            Navigator.pushNamed(context, 'cardtyr7i94re76u7');
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: 5
      )
    );
  }
}