import 'package:app_rick_and_morty/colors.dart';
import 'package:flutter/material.dart';
import 'package:app_rick_and_morty/pages/home/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: primaryColor, primary: primaryColor),
      ),
      home: const HomePage(),
    );
  }
}
