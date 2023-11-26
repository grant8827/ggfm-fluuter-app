// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class donateScreen extends StatelessWidget {
  const donateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 201, 201),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 154, 11, 1),
        foregroundColor: Colors.white,
        title: const Text('Donate'),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
                'Donate to our ministry and help us spread the word of God',
                style: TextStyle(fontSize: 25, color: Colors.black)),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                  )),
              onPressed: () async {
                Uri email = Uri.parse(
                    'https://www.paypal.com/donate/?hosted_button_id=FANP6ZX92QZ2G');
                if (await launchUrl(email)) {
                  //open email
                } else {
                  //do nothing
                }
              },
              child: const Text('Donate', style: TextStyle(fontSize: 20))),
        ],
      )),
    );
  }
}
