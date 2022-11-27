import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/route_test/pages/seconde_route.dart';
import 'package:pinhotx_portal/src/link_tree/pages/social_page.dart';
import 'package:pinhotx_portal/src/home/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyHomePage(title: "Pinhotx"),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
        '/social': (context) => const SocialPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 31, 83),
      ),
    );
  }
}
