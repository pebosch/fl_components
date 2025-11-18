import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text('AlertScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close_outlined),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}