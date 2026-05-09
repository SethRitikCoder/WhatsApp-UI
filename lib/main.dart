import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/HOME/homescreen.dart';
import 'package:whatsapp_app/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(0, 168, 132, 1),
        ),
        useMaterial3: false,
      ),
      themeMode: ThemeMode.system,
      home: MySplashScreen(),
    );
  }
}
