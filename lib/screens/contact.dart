// ignore_for_file: avoid_unnecessary_containers, camel_case_types, deprecated_member_use, no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class contactScreen extends StatefulWidget {
  const contactScreen({super.key});

  @override
  State<contactScreen> createState() => _contactScreenState();
}

class _contactScreenState extends State<contactScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'CONTACT',
                style: TextStyle(
                    fontSize: 25.0, decoration: TextDecoration.underline),
              ),
            ),
          ),
        ),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () async {
                Uri address = Uri.parse(
                    'https://www.google.com/maps/search/?api=1&query=brownstownjamaica');
                if (await launchUrl(address)) {
                  //open map
                } else {
                  //do nothing
                }
              },
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.mapPin,
                    color: Color.fromARGB(255, 172, 6, 6),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '40 Top Road Brown’s Town St.Ann Jamaica',
                    style: TextStyle(
                      fontSize: 16.0,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                Uri email = Uri.parse('mailto:ggfmja@gmail.com');
                if (await launchUrl(email)) {
                  //open email
                } else {
                  //do nothing
                }
              },
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.envelope,
                    color: Color.fromARGB(255, 76, 53, 51),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'ggfmja@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Office',
                style: TextStyle(
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                Uri phone = Uri.parse('https://wa.me/876-809-8852');
                if (await launchUrl(phone)) {
                  //dialer open
                } else {
                  //do nothing
                }
              },
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 29, 29, 29),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Color.fromARGB(255, 2, 136, 6),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '876-809-8852 ',
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                Uri phone = Uri.parse('tel:18764393517');
                if (await launchUrl(phone)) {
                  //dialer open
                } else {
                  //do nothing
                }
              },
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 29, 29, 29),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Color.fromARGB(255, 2, 136, 6),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '876-439-3517 ',
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Studio',
                  style: TextStyle(
                    fontSize: 25.0,
                    decoration: TextDecoration.underline,
                  )),
            ),
            TextButton(
              onPressed: () async {
                Uri phone = Uri.parse('tel:18769716413');
                if (await launchUrl(phone)) {
                  //dialer open
                } else {
                  //do nothing
                }
              },
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 29, 29, 29),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '876-971-6413 ',
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                Uri phone = Uri.parse('https://wa.me/?text=YourTextHere');
                if (await launchUrl(phone)) {
                  //dialer open
                } else {
                  //do nothing
                }
              },
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: Color.fromARGB(255, 29, 29, 29),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Color.fromARGB(255, 2, 136, 6),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '876-495-4408',
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 30, 255),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
