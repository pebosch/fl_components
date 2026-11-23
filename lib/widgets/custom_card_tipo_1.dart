import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.highlight_outlined, color: AppTheme.primary,),
            title: Text('Aqui va el titulo del card'),
            subtitle: Text('Cillum laborum reprehenderit excepteur mollit et eu consectetur. Laborum proident ex minim enim eiusmod nisi ullamco sint. Ex aliquip anim qui velit ex Lorem veniam nulla anim amet ex ad eu ipsum.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:() {
                    
                  }, 
                  child: Text('Ok')
                ),
                TextButton(
                  onPressed:() {
                    
                  }, 
                  child: Text('Cancelar')
                ),
            ],),
          )
        ],
      ),
    );
  }
}