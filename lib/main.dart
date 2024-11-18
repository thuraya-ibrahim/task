import 'package:flutter/material.dart';

import 'login_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        fontFamily: 'STC',
        inputDecorationTheme: InputDecorationTheme(),
      ),
      // home: Scaffold(
      //   backgroundColor: Colors.white,
      //   body: SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.all(16),
      //       child: Align(
      //         alignment: Alignment.center,
      //         child: Text(
      //           'assets world',
      //           style: TextStyle(
      //             color: Colors.red,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

void sum(StatelessWidget num1) {}
