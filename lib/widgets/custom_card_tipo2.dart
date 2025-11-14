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
            image: NetworkImage('https://gaming-cdn.com/images/news/articles/8305/cover/final-fantasy-vii-rebirth-se-ve-mucho-mejor-en-la-ps5-pro-cover66e40bc2c6356.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: 260,
          )
        ],
      ),
    );
  }
}