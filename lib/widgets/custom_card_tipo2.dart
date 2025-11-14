import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://gaming-cdn.com/images/news/articles/8305/cover/final-fantasy-vii-rebirth-se-ve-mucho-mejor-en-la-ps5-pro-cover66e40bc2c6356.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 500),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only( top: 10, bottom: 10, right: 20 ),
            child: Text('Aerith FF7')
          )
        ],
      ),
    );
  }
}