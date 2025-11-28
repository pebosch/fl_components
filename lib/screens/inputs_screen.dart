import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Tony',
      'apellidos': 'Stark',
      'email': 'tonny@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("Forms: Inputs"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
         child: Form(
          key: myFormKey,
           child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                icon: Icons. assignment_ind_outlined,
                suffixIcon: Icons.supervised_user_circle_outlined,
              ),
              SizedBox( height: 25),
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos',
                icon: Icons.supervised_user_circle_rounded,
              ),
              SizedBox( height: 25),
              CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'E-Mail de registro',
                icon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox( height: 25),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_rounded,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
              ),
              SizedBox( height: 25),
              ElevatedButton(
                onPressed: (){

                  FocusScope.of(context).requestFocus( FocusNode());

                  if( !myFormKey.currentState!.validate()){
                    print('Formulario no válido');
                    return;
                  }
                  print(formValues);
                }, 
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                )
              )
           
            ],
           ),
         )
      ),
    );
  }
}

