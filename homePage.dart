import 'package:flutter/material.dart';

import 'getStarted.dart';

class HomePageDoctor extends StatefulWidget {
  @override
  _HomePageDoctorState createState() => _HomePageDoctorState();
}

class _HomePageDoctorState extends State<HomePageDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Care"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'How You can take care of yourself?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.account_circle,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Find Doctor",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => GetStarted(),
                                      ),
                                    );
                                  },
                                  subtitle: Text(
                                    "210 Doctors",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.cyan[400],
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.account_balance,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Find Hospital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "30 Hospital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.add_to_photos,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Appointment",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "59 Available",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.black54,
                        ),
                        Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "DrugList",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "22 Services",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 150,
                            height: 150,
                          ),
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(27),
              ),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        color: Colors.white54,
      ),
    );
  }
}
