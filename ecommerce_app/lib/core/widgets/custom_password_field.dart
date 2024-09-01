import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  CustomPasswordField({this.hintText});

  final String? hintText;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool secureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: secureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                secureText = !secureText;
              });
            },
            icon: Icon(secureText ? Icons.visibility_off : Icons.visibility)),
        prefixIcon: Icon(Icons.password),
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 14),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide(
              color: Colors.white,
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide(
              color: Colors.black,
            )),
      ),
    );
  }
}
