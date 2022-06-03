import 'package:flutter/material.dart';
class TextInput extends StatelessWidget {
  const TextInput({Key? key ,required this.prefix,required this.label,required this.isPassword,required this.controller}) : super(key: key);
  final Icon prefix;
  final String label;
  final bool isPassword;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration:  InputDecoration(
        labelText: label,
        prefix: prefix
      ),
    );
  }
}
