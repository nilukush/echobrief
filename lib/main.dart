import 'package:echobrief/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EchoBriefApp());
}

class EchoBriefApp extends StatelessWidget {
  const EchoBriefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EchoBrief',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
