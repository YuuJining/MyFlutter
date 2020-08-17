import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.pink[200],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://i.pinimg.com/736x/90/38/d3/9038d3a8d0fa44ceb480d8b0431c2fb2.jpg'),
          ),
        ),
      ),
    ),
  );
}
