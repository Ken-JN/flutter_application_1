import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
final TextEditingController txtController;
final String MyHint;
final Color textColor;
final bool isNumber;

  const CustomTextField({
    super.key,
    required this.txtController, 
    required this.MyHint,
    required this.textColor,
    this.isNumber = false,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,

      inputFormatters: isNumber
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : null,
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