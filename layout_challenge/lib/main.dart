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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100.0,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Container(
                  width: 100.0,
                  color: Colors.blue,
                ),
              ],
            )
        ),
      ),
    );
  }
}


// EdgeInsets.symmetric / only / fromLTRB / all
// Container는 오직 한 개의 child만 가진다
// padding은 내용물과 container사이의 거리
// 여러개의 자식을 갖고 싶으면 Column() Row() 사용