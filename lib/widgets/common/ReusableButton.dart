import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  ReusableButton({required this.buttonText, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Take up the full available width
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade800, // Grey background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Rounded edges
          ),
          padding: EdgeInsets.symmetric(
            vertical: 7.0,
          ), // Increase vertical padding
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 14, // Text size
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}
