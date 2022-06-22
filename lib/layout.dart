import 'package:admin_page_template/constants/style.dart';
import 'package:admin_page_template/helpers/responsiveness.dart';
import 'package:admin_page_template/widgets/large_screen_layout.dart';
import 'package:admin_page_template/widgets/medium_screen_layout.dart';
import 'package:admin_page_template/widgets/small_screen_layout.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: Container(
            color: grey,
            height: 1,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Responsiveness(
          largeScreen: LargeScreenLayout(),
          mediumScreen: MediumScreenLayout(),
          smallScreen: SmallScreenLayout()),
    );
  }
}
