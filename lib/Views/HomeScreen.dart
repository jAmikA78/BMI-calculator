import 'package:bmi_calculator/Views/AnswerScreen.dart';
import 'package:bmi_calculator/Widgets/HightSlider.dart';
import 'package:bmi_calculator/Widgets/MaleOrFemale.dart';
import 'package:bmi_calculator/Widgets/WightAndAge.dart';
import 'package:bmi_calculator/Widgets/mainAppBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: mainAppBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaleOrFemale(),
          HeightSlider(),
          WeightAndAge(),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AnswerScreen()),
          );
        },
        child: const Text(
          'Calculate',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
