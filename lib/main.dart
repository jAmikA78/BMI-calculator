import 'package:bmi_calculator/Views/HomeScreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

AppBar MainAppBar() {
  return AppBar(
    backgroundColor: Colors.lightBlue,
    centerTitle: true,
    title: const Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
