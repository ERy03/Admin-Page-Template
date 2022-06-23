import 'package:admin_page_template/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          // flex: 1,
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
