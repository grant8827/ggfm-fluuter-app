// ignore_for_file: camel_case_types, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggfm90/widgets/navigations.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => homePageState();
}

class homePageState extends State<startPage> {
  final colorizeColors = [
    const Color.fromARGB(255, 155, 3, 3),
    const Color.fromARGB(255, 89, 89, 89),
    const Color.fromARGB(255, 240, 200, 0),
    const Color.fromARGB(255, 92, 14, 8),
  ];

  final colorizeTextStyle = const TextStyle(
    fontSize: 45.0,
    fontFamily: 'Horizon',
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 207, 207, 207),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('lib/assets/images/GGFM-Logo.png'),
            const SizedBox(
              height: 100.0,
            ),
            const Text(
              'Welcome To ',
              style: TextStyle(
                  fontSize: 28.0, color: Color.fromARGB(255, 85, 15, 15)),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 250.0,
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    ' GGFM90.1',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign: TextAlign.center,
                  ),
                  ColorizeAnimatedText(
                    ' Good ',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign: TextAlign.center,
                  ),
                  ColorizeAnimatedText(
                    'Gospel',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign: TextAlign.center,
                  ),
                  ColorizeAnimatedText(
                    'Station',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign: TextAlign.center,
                  ),
                  ColorizeAnimatedText(
                    '90.1',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign: TextAlign.center,
                  ),
                  ColorizeAnimatedText(
                    ' GGFM90.1',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign: TextAlign.center,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const navHeadFoot()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Live On Air',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      FaIcon(
                        FontAwesomeIcons.play,
                        size: 25.0,
                        color: Color.fromARGB(255, 117, 15, 8),
                      ),
                    ],
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
