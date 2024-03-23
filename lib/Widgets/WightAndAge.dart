import 'package:flutter/material.dart';

class WeightAndAge extends StatefulWidget {
  const WeightAndAge({super.key});

  @override
  State<WeightAndAge> createState() => _WeightAndAgeState();
}

int weight = 60;
int age = 20;

class _WeightAndAgeState extends State<WeightAndAge> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 150,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Weight',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  weight.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (weight > 35) weight -= 1;
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (weight < 150) weight += 1;
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                )
              ]),
        ),
        Container(
          height: 150,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Age',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  age.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (age > 14) age -= 1;
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (age < 150) age += 1;
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                )
              ]),
        ),
      ],
    );
  }
}
