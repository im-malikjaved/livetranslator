// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:livetranslator/pages/home_page.dart';
import 'package:livetranslator/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livetranslator/utils/routes.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
          // brightness: Brightness.dark,

          ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
