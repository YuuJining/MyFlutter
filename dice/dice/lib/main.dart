import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
              onPressed: (){
                print('Left button got pressed.');
              },//void callback이어서 ()-> docs참고
              child: Image.asset('images/dice1.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
              onPressed: (){
                print('Right button got pressed.');
              },
              child: Image.asset('images/dice2.png')
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