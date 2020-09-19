import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[800],
      ),
      body: MagicBallPage(),
    ),
  ),
);

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Expanded(
          child: FlatButton(
            onPressed: (){
              setState(() {
                ballNumber = Random().nextInt(4)+1;
              });
            },
              child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
    );
  }
}

