import 'package:flutter/material.dart';

Widget buildTextfield({
  required String label,
  required String hint,
  required IconData icon,
  bool isPassword = false,
  TextInputType keyboardType = TextInputType.text,
  String? Function(String?)? validator,
  TextEditingController? controller,
}) {
  return TextFormField(
    keyboardType: keyboardType,
    validator: validator,
    controller: controller,

    decoration: InputDecoration(
      label: Text(label),
      prefixIcon: Icon(icon),
      prefixIconColor: Colors.black,
      hintText: hint,
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    ),
  );
}

Widget passwordfield({
  required bool obscuretext,
  required VoidCallback? onIconTap,
}) {
  return TextFormField(
    keyboardType: TextInputType.numberWithOptions(),
    obscureText: obscuretext,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Password is required';
      }

      if (value.length < 6) {
        return 'Password must be at least 6 characters';
      }

      return null;
    },
    decoration: InputDecoration(
      label: Text('Password'),
      prefixIcon: Icon(Icons.password),
      prefixIconColor: Colors.black,
      hintText: 'Enter password',
      fillColor: Colors.white,
      filled: true,
      suffixIcon: IconButton(
        onPressed: onIconTap,
        icon:
            obscuretext
                ? Icon(Icons.visibility_off, color: Colors.black)
                : Icon(Icons.visibility, color: Colors.black),
      ),
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    ),
  );
}
