import 'package:Doctors_App/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginNew extends StatefulWidget {
  @override
  _LoginNewState createState() => _LoginNewState();
}

class _LoginNewState extends State<LoginNew> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipperTwo(flip: false),
            child: Container(
              // child: Image.network(
              //   "https://i.pinimg.com/originals/61/c7/a2/61c7a28bbb12ee7d75064e9dba23305e.png",
              //   height: 290,
              //   width: 380,
              // ),
              height: 200,
              color: Colors.orange[900],
            ),
          ),
          Text(
            'Lets Get Started',
            style: TextStyle(
              color: Colors.orange[900],
              fontSize: 25,
            ),
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                border: InputBorder.none,
                hintText: "name@email.com"),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              border: InputBorder.none,
              hintText: "********",
            ),
          ),
          MaterialButton(
            minWidth: 350,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.orange[900])),
            textColor: Colors.white,
            color: Colors.orange[900],
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Login",
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageDoctor(),
                ),
              );
            },
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.orange[900]),
            ),
          ),
          MaterialButton(
            minWidth: 350,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black54)),
            textColor: Colors.white,
            color: Colors.black54,
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Sign Up",
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Text('or'),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: Text(
              'f',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.orange[900],
            onPressed: () {},
          ),
          SizedBox(
            height: 150,
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: WaveClipperTwo(flip: false, reverse: true),
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: Colors.deepOrange[100],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
