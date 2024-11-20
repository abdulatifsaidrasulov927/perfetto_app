import 'package:flutter/material.dart';
import 'package:perfetto_app/ui/auth/chose_languase/chose_screen.dart';
import 'package:perfetto_app/ui/auth/login_screen/login_screen.dart';
import 'package:perfetto_app/ui/auth/pin_put_screen/pin_put_screen.dart';
import 'package:perfetto_app/ui/widget/auth_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final PageController _pageController = PageController();
  bool _isLoginPage = true; // Hozirgi sahifa: Login yoki Register

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD326),
      body: Stack(
        children: [
          // Ikonka
          Positioned(
            top: 123.49,
            left: 109,
            child: Image.asset(
              'assets/icons/auth_icon.png',
              width: 175.15,
              height: 98.62,
            ),
          ),

          // PageView uchun konteyner
          Positioned(
            top: 242,
            child: Container(
              width: 393,
              height: 610,
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: PageView(
                controller: _pageController,
                physics:
                    const NeverScrollableScrollPhysics(), // Sahifalar faqat tugma bilan o'zgaradi
                children: [
                  ChooseLanguageScreen(),
                  LoginScreen(),
                  PinPutScreen(),
                ],
              ),
            ),
          ),

          // Davom etish tugmasi
          Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: AuthButton(
              text: _isLoginPage ? 'Davom etish' : 'Ro’yxatdan o’tish',
              onPressed: () {
                setState(() {
                  _isLoginPage = !_isLoginPage;
                });
                // Keyingi sahifaga o'tish
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
