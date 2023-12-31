import 'package:flutter/material.dart';
import 'package:task1/screens/car/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.blueGrey,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CarView(),
    );
  }
}
