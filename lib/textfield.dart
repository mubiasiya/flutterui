import 'package:flutter/material.dart';

Widget buildTextfield({
  required String label,
  required String hint,
  required IconData icon,
  bool isPassword = false,
  TextInputType keyboardType = TextInputType.text,
}) {
  return TextField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
      label: Text(label,),
      prefixIcon: Icon(icon),
      prefixIconColor: Colors.black,
      hintText: hint,
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    ),
  );
}



