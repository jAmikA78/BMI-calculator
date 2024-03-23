import 'package:flutter/material.dart';

AppBar mainAppBar() => AppBar(
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
