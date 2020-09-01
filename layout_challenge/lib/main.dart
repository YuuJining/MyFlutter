import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class  Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:SafeArea (
          child: Column (
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/muji.jpg'),
              ),
              Text(
                'Yujin Lee',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: 'PatrickHand',
                ),
              ),
              Text(
                'MOBILE DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'ShrikHand',
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade100,
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// EdgeInsets.symmetric / only / fromLTRB / all
// Container는 오직 한 개의 child만 가진다
// padding은 내용물과 container사이의 거리
// 여러개의 자식을 갖고 싶으면 Column() Row() 사용