import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildTextFieldBorder(),
        filled: true,
        hintText: "Search",
        suffixIcon: Icon(Icons.search),
        fillColor: Colors.white.withOpacity(0.1),
        focusedBorder: buildTextFieldBorder(),
        enabledBorder: buildTextFieldBorder(),
      ),
    );
  }

  OutlineInputBorder buildTextFieldBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.2)));
  }
}
