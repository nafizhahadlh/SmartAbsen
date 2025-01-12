import 'package:flutter/material.dart';
import 'content/login_page.dart';
import 'content/splash_page.dart';
import 'content/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Langsung ke halaman HomePage
      initialRoute: '/home',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(), // Halaman HomePage
      },
    );
  }
}
