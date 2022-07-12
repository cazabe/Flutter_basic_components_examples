import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Juan',
      'last_name': 'Fraguen',
      'email': 'prueba@hotmail.com',
      'password': 'losFraguen',
      'rol': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido del usuario',
                      formProperty: 'last_name',
                      formValues: formValues),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo del usuario',
                      textInputType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña del usuario',
                      isPassword: true,
                      formProperty: 'password',
                      formValues: formValues),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr Devops',
                        child: Text('Jr Devops'),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      //*TODO imprimir valores del formulario
                      print(formValues);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
