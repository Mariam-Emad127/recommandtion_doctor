import 'package:flutter/material.dart';

class Buildstepcircle extends StatelessWidget {
  final int step;
  final String number;
  final String label;
  final Color? backgroundColor;
  const Buildstepcircle(
      {super.key,
      required this.step,
      required this.number,
      required this.label,
      required this.backgroundColor});

  final int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    bool isActive = _currentStep >= step;
    return Column(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: backgroundColor,
          // isActive ? Colors.blue : Colors.grey[300],
          child: Text(
            number,
            style: TextStyle(color: isActive ? Colors.white : Colors.grey),
          ),
        ),
        const SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black54)),
      ],
    );
  }
}
