import 'package:flutter/material.dart';

// Screen size break points
const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;

class Responsiveness extends StatelessWidget {
  final Widget largeScreenSize;
  final Widget mediumScreenSize;
  final Widget smallScreenSize;

  const Responsiveness({
    Key? key,
    required this.largeScreenSize,
    required this.mediumScreenSize,
    required this.smallScreenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {}
}
