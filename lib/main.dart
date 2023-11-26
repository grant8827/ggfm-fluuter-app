// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:ggfm90/screens/frontscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 186, 186, 186),
        body: startPage(),
      ),
    );
  }
}
