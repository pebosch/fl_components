import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://i.redd.it/s2qbjo13ju1d1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1000),
          )
        ],
      ),
    );
  }
}