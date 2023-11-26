// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element, deprecated_member_use, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggfm90/screens/about.dart';
import 'package:ggfm90/screens/announcer.dart';
import 'package:ggfm90/screens/contact.dart';
import 'package:ggfm90/screens/donate.dart';
import 'package:ggfm90/screens/homescreen.dart';
import 'package:ggfm90/screens/schedule.dart';
import 'package:ggfm90/widgets/bottomnav.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class navHeadFoot extends StatefulWidget {
  const navHeadFoot({super.key});

  @override
  State<navHeadFoot> createState() => _navHeadFootState();
}

class _navHeadFootState extends State<navHeadFoot> {
  int pagesIndex = 0;
  final List<Widget> _pages = <Widget>[
    const homePage(),
    const aboutScreen(),
    const announcerScreen(),
    const scheduleScreen(),
    const contactScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      pagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 196, 195, 195),
          size: 35.0,
        ),
        backgroundColor: const Color.fromARGB(255, 204, 17, 3),
        title: const Text('GGFM90.1'),
        foregroundColor: const Color.fromARGB(255, 196, 195, 195),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            iconSize: 25.0,
            onPressed: () {
              Share.share(
                  'check out my App https://apps.apple.com/jm/app/ggfm/id6472855705',
                  subject: 'Look what I made!');
            },
            icon: const Icon(Icons.share),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 186, 15, 2),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 186, 15, 2)),
                accountName: Text(
                  "Good Gospel Station",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("ggfmja@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 186, 15, 2),
                  child: Image(
                    image: AssetImage('lib/assets/images/GGFM-Logo.png'),
                    fit: BoxFit.cover,
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 47, 47, 47),
              selectedColor: const Color.fromARGB(255, 175, 7, 1),
              selectedTileColor: const Color.fromARGB(255, 186, 186, 186),
              leading: const Icon(Icons.home),
              title: const Text(' Home'),
              selected: pagesIndex == 0,
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ), //DrawerHeader
            ListTile(
              iconColor: const Color.fromARGB(255, 47, 47, 47),
              selectedColor: const Color.fromARGB(255, 175, 7, 1),
              selectedTileColor: const Color.fromARGB(255, 186, 186, 186),
              leading: const Icon(Icons.info),
              title: const Text(' About'),
              selected: pagesIndex == 1,
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 47, 47, 47),
              selectedColor: const Color.fromARGB(255, 175, 7, 1),
              selectedTileColor: const Color.fromARGB(255, 186, 186, 186),
              leading: const Icon(Icons.person),
              title: const Text(' Announcer'),
              selected: pagesIndex == 2,
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),

            ListTile(
              iconColor: const Color.fromARGB(255, 47, 47, 47),
              selectedColor: const Color.fromARGB(255, 175, 7, 1),
              selectedTileColor: const Color.fromARGB(255, 186, 186, 186),
              leading: const FaIcon(
                FontAwesomeIcons.clock,
              ),
              title: const Text(' Schedule '),
              selected: pagesIndex == 3,
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(3);
              },
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 47, 47, 47),
              selectedColor: const Color.fromARGB(255, 175, 7, 1),
              selectedTileColor: const Color.fromARGB(255, 186, 186, 186),
              leading: const Icon(
                Icons.contacts,
              ),
              title: const Text(' Contact'),
              selected: pagesIndex == 4,
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(4);
              },
            ),

            const Divider(),
            ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Color.fromARGB(255, 13, 99, 199),
                ),
                title: const Text(
                  ' Facebook',
                ),
                onTap: () async {
                  Uri email = Uri.parse(
                      'https://www.facebook.com/people/GGFM-901/100068398020283/');
                  if (await launchUrl(email)) {
                    //open email
                  } else {
                    //do nothing
                  }
                }),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.instagram,
                color: Color.fromARGB(255, 209, 27, 88),
              ),
              title: const Text(' Instagram '),
              onTap: () async {
                Uri email =
                    Uri.parse('https://www.instagram.com/ggfm90.1/?hl=en');
                if (await launchUrl(email)) {
                  //open email
                } else {
                  //do nothing
                }
              },
            ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.tiktok,
                color: Color.fromARGB(255, 23, 23, 23),
              ),
              title: const Text(' TikTok'),
              onTap: () async {
                Uri email = Uri.parse('https://www.tiktok.com/@ggfm90.1');
                if (await launchUrl(email)) {
                  //open email
                } else {
                  //do nothing
                }
              },
            ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
              title: const Text('YouTube'),
              onTap: () async {
                Uri email = Uri.parse(
                    'https://www.youtube.com/results?search_query=ggfm90.1');
                if (await launchUrl(email)) {
                  //open email
                } else {
                  //do nothing
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const donateScreen()),
                  );
                },
                child: const Text('Donate'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 212, 14, 0)),
                onPressed: () async {
                  Uri email = Uri.parse('https://www.ggfmja.org');
                  if (await launchUrl(email)) {
                    //open email
                  } else {
                    //do nothing
                  }
                },
                child: const Text('Website',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      body: _pages[pagesIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        color: const Color.fromARGB(255, 43, 43, 43),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 70,
                child: const Text(
                  'Daily Shows',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 225, 15, 0),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 70,
              child: const slideScreen(),
            ),
          ],
        ),
        //FOOTER ICON END
      ),
    );
  }
}
