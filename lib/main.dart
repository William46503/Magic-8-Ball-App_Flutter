import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  randomBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
    print('ballNumber is $ballNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              onPressed: () {
                randomBallNumber();
                print('Button is pressed');
              },
              child: Image.asset('images/ball$ballNumber.png')),
        ),
      ),
    );
  }
}

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Anything"),
        backgroundColor: Color(0xff303f9f),
      ),
      body: Ball(),
    );
  }
}
