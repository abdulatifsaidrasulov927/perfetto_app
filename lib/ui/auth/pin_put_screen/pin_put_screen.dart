import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinPutScreen extends StatefulWidget {
  const PinPutScreen({super.key});

  @override
  _PinPutScreenState createState() => _PinPutScreenState();
}

late Timer _timer;
int _start = 120;
String _timeString = "02:00";

String _formatTime(int seconds) {
  int minutes = seconds ~/ 60;
  int remainingSeconds = seconds % 60;
  return "${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}";
}

class _PinPutScreenState extends State<PinPutScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Tasdiqlash",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "+998 91 234 56 78 ga yuborilgan SMS kodni kiritinga",
          style: TextStyle(
            color: Color(0xff151515),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15),
        // PinCodeTextField with adjusted space
        Row(
          children: [
            SizedBox(
              width: 300,
              child: PinCodeTextField(
                length: 5, // 5 characters for the PIN code
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box, // Box shape for PIN code input
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 54,
                  fieldWidth: 43,
                  activeColor: Color(0xffEFEFEF),
                  inactiveColor: Color(0xffEFEFEF),
                  selectedColor: Color(0xffEFEFEF),
                  borderWidth: 0.5,
                ),
                onChanged: (value) {
                  // Handle PIN code change
                },
                appContext: context,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              _timeString,
              style: const TextStyle(
                color: Color(0Xff262626),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
            height: 15), // Add some space between the PinCode and timer

        // Timer with slightly closer position to the PIN field

        const SizedBox(
            height: 20), // Add space between the timer and error message
        const Text(
          "Tasdiqlash kodi xato kiritildi!",
          style: TextStyle(
            color: Color(0xffF04438),
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20), // Space before the "Login" section
        Row(
          children: [
            const Text(
              "Hisobingiz mavjudmi?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                // Handle "Kirish" action
              },
              child: const Text(
                "Kirish",
                style: TextStyle(
                  color: Color(0xff0068E1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
