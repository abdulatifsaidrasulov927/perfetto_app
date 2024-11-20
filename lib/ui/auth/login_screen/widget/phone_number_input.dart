import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberInput extends StatefulWidget {
  final TextEditingController controller;

  const PhoneNumberInput({
    super.key,
    required this.controller,
  });

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      keyboardType: TextInputType.phone,
      maxLength: 9, // Allow only 9 digits after +998
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // Only digits
        LengthLimitingTextInputFormatter(9), // Limit to 9 characters
      ],
      decoration: InputDecoration(
        hintText:
            "(_ _) _ _ _ _ _ _ _", // Hint text appears only when the field is not focused
        hintStyle: const TextStyle(color: Colors.grey), // Make hint text grey
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/icons/uzb_icon.png', // Flag image
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8.0),
              const Text(
                "+998", // Fixed prefix
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black, // Always keep the prefix text black
                ),
              ),
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF9CBEF6),
            width: 2,
          ),
        ),
      ),
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      validator: (value) {
        // Add validation for phone number
        if (value == null || value.isEmpty) {
          return 'Please enter a phone number';
        }
        if (value.length < 9) {
          return 'Phone number must be 9 digits';
        }
        return null;
      },
    );
  }
}
