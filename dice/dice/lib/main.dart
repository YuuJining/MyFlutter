import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
               changeDiceFace();
              },//void callback이어서 ()-> docs참고
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                 changeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
            ),
          )
        ],
      ),
    );
  }
}

//expanded 클래스 -> 사용가능한 공간에 의존하여 크기를 저절로 확장
//flex 비율대로 크기 조절 됨
// 노란 전구 누르면 위젯 remove나 추가 가능
// 레이아웃내 위젯이 실시간으로 바뀌는 경우는 StatefullWidget사용