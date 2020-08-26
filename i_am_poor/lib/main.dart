import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[400],
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.blue[300],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/coal.jpg'),
          ),
        ),
      ),
    )
  );
}
