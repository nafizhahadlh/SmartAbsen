import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0F7FF), Color(0xFFFFFFFF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _SplashText(
                "Welcome To",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
              const SizedBox(height: 10),
              const _SplashText(
                "SmartAbsen!",
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 74, 234),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SplashText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const _SplashText(
    this.text, {
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
