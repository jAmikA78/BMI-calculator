import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

double height = 180;

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Height',
            style: TextStyle(fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                height.toInt().toString(),
                style: const TextStyle(fontSize: 40),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Slider(
            value: height,
            min: 60,
            max: 220,
            onChanged: (value) => setState(() => height = value),
          )
        ],
      ),
    );
  }
}
