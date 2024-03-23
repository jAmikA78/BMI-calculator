import 'package:flutter/material.dart';

class MaleOrFemale extends StatefulWidget {
  const MaleOrFemale({super.key});

  @override
  State<MaleOrFemale> createState() => _MaleOrFemaleState();
}

bool gender = true;
Color _maleColor = Color.fromRGBO(144, 202, 249, 1);
Color _femaleColor = Colors.purple.shade600;

class _MaleOrFemaleState extends State<MaleOrFemale> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              gender = true;
              _maleColor = const Color.fromRGBO(144, 202, 249, 1);
              _femaleColor = Colors.purple.shade600;
            });
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: _maleColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.male,
                  size: 100,
                ),
                Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              gender = false;
              _maleColor = Colors.blue.shade500;
              _femaleColor = Color.fromARGB(255, 176, 37, 245);
            });
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: _femaleColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.female,
                  size: 100,
                ),
                Text(
                  'FeMale',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
