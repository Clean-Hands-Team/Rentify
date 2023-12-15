import 'package:flutter/material.dart';
import 'pages/yakinimdakiler_pages.dart';
import 'pages/alt_appbar.dart';
import 'repository/yakindakiler_repository.dart';
import 'repository/yakindakiler_repository_resim.dart';
import 'package:rentify/RenkTanimlama/RenkPages.dart';
import 'pages/ilkSayfa.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "rentify",
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.cyan,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const ilkSayfa(),
    );
  }
}