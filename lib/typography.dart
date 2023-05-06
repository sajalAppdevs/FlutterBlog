import 'package:flutter/material.dart';

// create typography.dart file
class MyTextStyle extends StatelessWidget {
  const MyTextStyle({
    super.key,
    required this.name,
    required this.style,
    this.align,
  });

  final String name;
  final TextStyle style;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(1.0),
      child: Text(name, style: style.copyWith(letterSpacing: 1.0), textAlign: align),
    );
  }
}
