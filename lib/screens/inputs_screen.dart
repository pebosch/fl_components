import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms: Inputs"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
         child: Column(
          children: [
            TextFormField(
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
            )
          ],
         )
      ),
    );
  }
}