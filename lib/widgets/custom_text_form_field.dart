import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Da',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('Valor: $value');
      },
      validator: (value) {
        if( value!.length < 5 ) {
          return 'Mínimo 5 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: 'Nombre y apellidos',
        labelText: 'Nombre y apellidos',
        helperText: 'Solo letras',
        //prefixIcon: Icon (Icons.verified_user_outlined),
        icon: Icon (Icons.assignment_ind_rounded),
        suffixIcon: Icon ( Icons.supervised_user_circle),
        border: OutlineInputBorder(
    
        )
      ),
    );
  }
}