import 'package:admin_page_template/helpers/responsiveness.dart';
import 'package:admin_page_template/widgets/large_screen_layout.dart';
import 'package:admin_page_template/widgets/medium_screen_layout.dart';
import 'package:admin_page_template/widgets/small_screen_layout.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsiveness(
          largeScreen: LargeScreenLayout(),
          mediumScreen: MediumScreenLayout(),
          smallScreen: SmallScreenLayout()),
    );
  }
}
