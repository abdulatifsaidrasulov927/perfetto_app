import 'package:flutter/material.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  _ChooseLanguageScreenState createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  String _selectedLanguage = ''; // Tanlangan tilni saqlash

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Tilni Tanlang",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xfff151515),
          ),
        ),
        const SizedBox(height: 30),
        _buildLanguageOption("English", "assets/images/eng.png"),
        const SizedBox(height: 20),
        _buildLanguageOption("Russian", "assets/images/rus.png"),
        const SizedBox(height: 20),
        _buildLanguageOption("Uzbek", "assets/images/uzb.png"),
      ],
    );
  }

  Widget _buildLanguageOption(String language, String flagPath) {
    final isSelected = _selectedLanguage == language;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguage = language;
        });

        // Har bir til uchun alohida ishni bajarish
        if (language == "English") {
          // Ingliz tili tanlandi
        } else if (language == "Russian") {
          // Rus tili tanlandi
        } else if (language == "Uzbek") {
          // O'zbek tili tanlandi
        }
      },
      child: Container(
        width: 361,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3), // Hex kodini Color ga aylantirish
          borderRadius: BorderRadius.circular(10), // Radius
          border: Border.all(
            color:
                isSelected ? Colors.blue : Color(0xFFF3F3F3), // Chegara rangi
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), // Soyaning rangi
              blurRadius: 10, // Yoyilish darajasi
              offset: const Offset(0, 4), // Soyaning joylashuvi
            )
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              flagPath,
              width: 40, // Tasvir kengligi
              height: 40, // Tasvir balandligi
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10), // Bo'shliq (Gap: 10px)
            Text(
              language,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.blue : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
