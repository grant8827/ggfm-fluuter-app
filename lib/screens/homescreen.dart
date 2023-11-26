// ignore_for_file: camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}

class homePageState extends State<homePage> {
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Radio Player',
      url: 'https://usa14.fastcast4u.com/proxy/ggfm?mp=/1',
      imagePath: 'assets/cover.jpg',
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 207, 207),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/gb.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'lib/assets/images/GGFM-Logo.png',
              ),
              const SizedBox(height: 80),
              Container(
                child: GradientText(
                  'GGFM90.1',
                  style: const TextStyle(
                      fontSize: 60.0, fontWeight: FontWeight.bold),
                  colors: const [
                    Color.fromARGB(255, 174, 174, 174),
                    Color.fromARGB(255, 115, 12, 4),
                  ],
                ),
              ),
              const SizedBox(height: 0),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Good Gospel For Your Everyday Living',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 175, 175, 175)),
                ),
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color.fromARGB(255, 114, 114, 114),
        onPressed: () {
          isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
        },
        tooltip: 'Control button',
        child: Icon(
          isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
          color: const Color.fromARGB(255, 154, 11, 1),
          size: 60,
        ),
      ),
    );
  }
}
