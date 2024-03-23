import 'package:bmi_calculator/Widgets/MaleOrFemale.dart';
import 'package:bmi_calculator/Widgets/WightAndAge.dart';
import 'package:flutter/material.dart';

import '../Widgets/HightSlider.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double BMI = weight / (height * height) * 10000;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            width: 500,
            child: Image.asset(
              ((gender == true)
                  ? 'Assets/Images/male.png'
                  : 'Assets/Images/female.png'),
            ),
          ),
          Text(
            'Your BMI = ${BMI.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          'Re-Calculate',
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
