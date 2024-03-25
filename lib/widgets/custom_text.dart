import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 12

  });
  final String text ;
  final double fontSize ;
  @override
  Widget build(BuildContext context) {
    return  Text( text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold),
    );
  }
}