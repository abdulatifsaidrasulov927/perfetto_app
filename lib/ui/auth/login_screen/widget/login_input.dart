import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final TextEditingController controller;

  const LoginInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Colors.black54, // Color of the label
        ),
        hintText: 'Ism familiya', // Placeholder text
        hintStyle: const TextStyle(
          color: Colors.black38, // Placeholder color
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Border radius
          borderSide: const BorderSide(
            color: Colors.grey, // Default border color (when not focused)
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Same as default border
          borderSide: const BorderSide(
            color: Color(0xFF9CBEF6), // Border color when focused
            width: 2, // Border width when focused
          ),
        ),
      ),
      style: const TextStyle(
        fontSize: 16, // Text size
        color: Colors.black, // Text color
      ),
    );
  }
}
