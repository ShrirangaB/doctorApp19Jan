import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      //   backgroundColor: Colors.blue,
      // ),

      body: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                'Find Your Desired\nDoctor',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    hintText: "Search for Doctors"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    width: 200,
                    color: Colors.teal[200],
                    child: const Center(
                        child: Text(
                      'Dental Sugeon',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    width: 200,
                    color: Colors.teal[300],
                    child: const Center(
                        child: Text(
                      'Heart Surgeon',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    width: 200,
                    color: Colors.teal[400],
                    child: const Center(
                        child: Text(
                      'Eye Specilist',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text('Top Doctors'),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_outline_outlined),
                    title: Text('Dr.Stella Kane'),
                    subtitle: Text('Heart Sugeon - Flower Hospitals'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person_outline_sharp),
                    title: Text('Dr.Joseph Kart'),
                    subtitle: Text('Dental Sugeon - Flower Hospitals'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
