import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Da',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
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
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon (Icons.verified_user_outlined),
        icon: Icon ( icon ),
        suffixIcon: Icon ( suffixIcon ),
      ),
    );
  }
}