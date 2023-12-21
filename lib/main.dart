import 'package:flutter/material.dart';
import 'package:rentify/constants/RenkPages.dart';
import 'pages/alt_appbar.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
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
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.blue,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Renkler.FF97BCBB),
        useMaterial3: true,
      ),

      home:  alt_appbar(),
    );
  }
}