import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/style.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Admin Page",
      theme: ThemeData(
        // scaffoldBackgroundColor to change the background color on all screens
        scaffoldBackgroundColor: light,
        // Google fonts
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black,
        ),
        // Constructs an object that selects a transition based on the platform
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      // home:
      home: Text("Home"),
    );
  }
}
