import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
final TextEditingController txtController;
final String MyHint;
final Color textColor;

  const CustomTextField({
    super.key,
    required this.txtController, 
    required this.MyHint,
    required this.textColor,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: TextStyle(color: textColor),
      
      decoration: InputDecoration(
        hintText: MyHint,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}