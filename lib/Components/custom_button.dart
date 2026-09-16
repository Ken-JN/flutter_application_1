import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color BackgroundColor;
  final Color textColor;

  const CustomButton({super.key, required this.buttonText, required this.BackgroundColor, required this.textColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      height: 40,             
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: BackgroundColor,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
  
          ),
        ),
      ),
    );
  }
}