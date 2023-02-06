import 'dart:ui';

import 'package:flutter/material.dart';

double currentValue = 150;

class SliderContainer extends StatelessWidget {
  final String title;
  final double value;
  final String cm;
  final void Function(double) onChange;
  SliderContainer({
    Key? key,
    required this.title,
    required this.cm,
    required this.value,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.round().toString(),
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                cm,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
        Slider(
            activeColor: Colors.pink,
            inactiveColor: Colors.white,
            value: value,
            max: 1000,
            min: 20,
            onChanged: onChange),
      ],
    );
  }
}
