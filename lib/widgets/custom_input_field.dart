import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixicon;
  final TextInputType? textInputType;
  final bool isPassword;
  final String formProperty;
  final Map<String, String> formValues;
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.counterText,
    this.icon,
    this.suffixicon,
    this.textInputType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: textInputType,
      obscureText: isPassword,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 5 ? 'Mínimo 5 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: 'Sólo letras',
          counterText: counterText,
          // prefix: Icon(Icons.admin_panel_settings),
          suffixIcon: suffixicon == null ? null : Icon(suffixicon),
          icon: icon == null ? null : Icon(icon)),
    );
  }
}
