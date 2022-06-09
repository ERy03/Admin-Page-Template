import 'package:admin_page_template/constants/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Admin Page",
      theme: ThemeData(
        // scaffoldBackgroundColor to change the background color on all screens
        scaffoldBackgroundColor: light,
        textTheme:
      ),
    );
  }
}
