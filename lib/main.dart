// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myapp/Components/bottomNavBar.dart';
import 'package:myapp/Components/transfert.dart';
import 'package:myapp/Screens/Login_Page.dart';
import 'package:myapp/Screens/history_page.dart';
import 'package:myapp/Screens/signup_page.dart';
import 'package:myapp/Screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: CustomBottomNavBar()),
    );
  }
}

/*initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUp(),
        '/main': (context) => const CustomBottomNavBar(),*/ 