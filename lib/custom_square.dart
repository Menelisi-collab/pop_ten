import 'package:flutter/material.dart';


class CustomSquare extends StatelessWidget {
  final int value;

  // default constructor
  const CustomSquare({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Text(
        '$value',
        style: const TextStyle(
          fontSize: 15,
          color: Colors.red,
        ),
      ),
    );
  }
}
