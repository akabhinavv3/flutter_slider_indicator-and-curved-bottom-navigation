import 'package:flutter/material.dart';

import 'Pages/home_page.dart';


void main() {
  runApp(SliderApp());
}

class SliderApp extends StatelessWidget {
  const SliderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: HomePage(),
    );
  }
}
