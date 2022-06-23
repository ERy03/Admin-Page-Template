// import 'package:admin_page_template/layout.dart';
import 'package:admin_page_template/layout.dart';
import 'package:admin_page_template/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/style.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: "Admin Page",
      theme: ThemeData(
        dividerColor: Colors.transparent,
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
      // home: SiteLayout(),
    );
  }

  final _router = GoRouter(
    // Gets rid of hash in url
    urlPathStrategy: UrlPathStrategy.path,
    routes: <GoRoute>[
      GoRoute(
        name: "home",
        path: '/',
        builder: (BuildContext context, GoRouterState state) => SiteLayout(),
      ),
      GoRoute(
        name: "user",
        path: '/user',
        builder: (BuildContext context, GoRouterState state) => UserPage(),
      ),
      // GoRoute(
      //   path: '/page2',
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const Page2Screen(),
      // ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(
            state.error.toString(),
          ),
        ),
      ),
    ),
  );
}
