import 'dart:math';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Container'),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
         )
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_fill_rounded),
        onPressed: (){
          //_width = 200;
          _width = Random().nextInt(300).toDouble() + 50;
          _height = 300;
          _color = Colors.red;
          _borderRadius = BorderRadius.circular(20);
          setState(() {
            
          });
        }),

    );
  }
}