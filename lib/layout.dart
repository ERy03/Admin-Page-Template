import 'package:admin_page_template/widgets/large_screen_layout.dart';
import 'package:admin_page_template/widgets/small_screen_layout.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SmallScreenLayout(),
    );
  }
}
