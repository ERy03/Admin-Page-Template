import 'package:flutter/material.dart';

class MediumScreenLayout extends StatelessWidget {
  const MediumScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.orange,
    );
  }
}
