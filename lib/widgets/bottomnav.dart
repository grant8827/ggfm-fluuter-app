// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class slideScreen extends StatefulWidget {
  const slideScreen({super.key});

  @override
  State<slideScreen> createState() => _slideScreenState();
}

class _slideScreenState extends State<slideScreen> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      autoPlayInterval: 6000,
      isLoop: true,
      children: [
        //slide 1
        Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Container(
                  child: const FittedBox(
                    child: Text(
                      'T.G.I.M: mon-fri, 6am - 10am, \nHost: Cindy martin',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //slide 2
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'TOTAL PRAISE: mon-fri 10am-2pm \nHost: Raymond Lindsay',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
        //praise connection
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'PRAISE CONNECTION: mon-fri \n2Pm-6pm Host: Teja-ja Rose',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
        //evening glory
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'EVENING GLORY: mon-fri \n6pm-10pm Host: Subrena Plunkett',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
        //gospel vibration
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'GOSPEL VIBRATION: Saturdays \n7am-12pm Host: Gregory Grant',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
        //explosive gospel power
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'EXPLOSIVE GOSPEL POWER: \nSaturdays 7am-12pm Host: Ivan Hall',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'SUNDAY EVENING PRAISE: \nSundays 4pm-7pm Host: Bro Rodney',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
