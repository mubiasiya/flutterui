import 'package:flutter/material.dart';

void showPopup(String msg,BuildContext context){
  showDialog(context: context, builder: (context)=>AlertDialog(
    backgroundColor: Colors.white,
    content: Text(msg),
    title: const Text("Error"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],

  ));
}

void showPopupsucc(String msg,BuildContext context){
  showDialog(context: context, builder: (context)=>AlertDialog(
    content: Text(msg),
    title: const Text("Success"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],

  ));
}