// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class scheduleScreen extends StatefulWidget {
  const scheduleScreen({super.key});

  @override
  State<scheduleScreen> createState() => _scheduleScreenState();
}

class _scheduleScreenState extends State<scheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            //SUNDAY
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SUNDAYS',
                      style: TextStyle(
                          fontSize: 20.0, decoration: TextDecoration.underline),
                    ),
                    Text(
                        '7:00 AM- 1:00 PM --- GOSPEL RIDE EXPERIENCE WITH BROTHER DAVON & SISTER CAROL'),
                    SizedBox(height: 8),
                    Text(
                        '4:00 PM-8:00 PM --- SUNDAY EVENING PRAISE, Host: Bro Rodney'),
                  ],
                ),
              ),
            ),
            //monday to friday
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MONDAYS TO FRIDAY',
                        style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.underline)),
                    SizedBox(height: 10),
                    Text(
                        '4:00 AM-6:00AM --- ARISE JAMAICA ARISE WORLD HOST PASTOR HALL '),
                    SizedBox(height: 8),
                    Text('6:00 AM-10:00 AM --- T.G.I.M HOST CINDY MARTIN'),
                    SizedBox(height: 8),
                    Text(
                        '10:00 AM-2:00 PM --- TOTAL PRAISE HOST RAYMOND LINDSAY '),
                    SizedBox(height: 8),
                    Text(
                        '2:00 PM-6:00 PM --- PRAISE CONNECTION HOST TEJA-JA ROSE'),
                    SizedBox(height: 8),
                    Text(
                        '6:00 PM- 10:00 PM --- EVENING GLORY HOST SUBRENA PLUNKETT  '),
                  ],
                ),
              ),
            ),
            //SATURDAY
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SATURDAYS',
                        style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.underline)),
                    SizedBox(height: 10),
                    Text(
                        '7:00 AM- 12:00 PM --- GOSPEL VIBRATION WITH BRO GREGORY'),
                    SizedBox(height: 8),
                    Text(
                        '12:00 PM-5:00 PM --- GOSPEL IN MOTION HOST CAREENA JAMES'),
                    SizedBox(height: 8),
                    Text(
                        '5:00 PM-10:00 PM --- EXPLOSIVE GOSPEL POWER WITH PASTOR HALL '),
                  ],
                ),
              ),
            ),
            //connecting partner
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CONNECTING PARTNERS',
                        style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.underline)),
                    SizedBox(height: 10),
                    Text('SUNDAYS', style: TextStyle(fontSize: 20.0)),
                    Text('4:00 AM-7:00 AM --- BROTHER LOU'),
                    SizedBox(height: 8),
                    Text(
                        '7:00 AM- 1:00 PM --- GOSPEL RIDE EXPERIENCE WITH BROTHER DAVON & SISTER CAROL'),
                    SizedBox(height: 8),
                    Text('1:00 PM-4:00 PM --- PENINSILYN'),
                    SizedBox(height: 8),
                    Text('MONDAYS', style: TextStyle(fontSize: 20.0)),
                    Text('10:00 PM-12:00 AM --- PENINSILYN    '),
                    SizedBox(height: 8),
                    Text('TUESDAYS', style: TextStyle(fontSize: 20.0)),
                    Text('10:00 PM-12:00 AM --- BISHOP BAKER'),
                    SizedBox(height: 8),
                    Text('THURSDAYS', style: TextStyle(fontSize: 20.0)),
                    Text('10:00 PM-12:00 AM --- BISHOP BAKER'),
                    SizedBox(height: 8),
                    Text('FRIDAY', style: TextStyle(fontSize: 20.0)),
                    Text('10:00 PM-12:00 AM --- NRP MEDIA'),
                    SizedBox(height: 8),
                    Text('SATURDAY', style: TextStyle(fontSize: 20.0)),
                    Text('4:00 AM-7:00 AM --- Brother LOU'),
                    Text('10:00 PM-12:00 AM --- BISHOP BAKER')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
