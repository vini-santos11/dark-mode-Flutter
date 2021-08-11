import 'package:flutter/material.dart';

import 'dark_mode.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: DarkMode.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.purple,
            brightness: DarkMode.instance.themeMode ? Brightness.dark : Brightness.light,
          ),
          home: MyHomePage(title: 'Dark Mode'),
        );
      },
    );
  }
}
