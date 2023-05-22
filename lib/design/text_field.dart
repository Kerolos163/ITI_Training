import 'package:flutter/material.dart';

Widget TEXTFIELD(
  TextEditingController varname,
  var kbt,
  String label,
  String hint,
  Icon icon,
  bool ot,
) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      
      obscureText: ot,
      controller: varname,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: label,
        hintText: hint,
        suffixIcon: icon,
        
      ),
      keyboardType: kbt,
    ),
  );
}
