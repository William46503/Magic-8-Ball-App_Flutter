import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Anything"),
        backgroundColor: Color(0xff303f9f),
      ),
      body: Container(
        color: Color(0xff212121),
      ),
    );
  }
}
