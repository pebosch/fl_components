import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
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
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => Listview1Screen(),);
            //Navigator.pushReplacement(context, route);
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: AppRoutes.MenuOptions.length
      )
    );
  }
}