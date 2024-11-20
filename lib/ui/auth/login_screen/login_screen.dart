import 'package:flutter/material.dart';
import 'package:perfetto_app/ui/auth/login_screen/widget/login_input.dart';
import 'package:perfetto_app/ui/auth/login_screen/widget/phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ro’yxatdan o’tish",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "Ism familiya",
          style: TextStyle(
            color: Color(0xff151515),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        LoginInput(
          controller: TextEditingController(),
        ),
        const SizedBox(height: 15),
        const Text(
          "Telefon raqam",
          style: TextStyle(
            color: Color(0xff151515),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        PhoneNumberInput(
          controller: TextEditingController(),
        ),
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
              onTap: () {},
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
