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
            mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+82 010 8223 4093',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'ShrikHand',
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                title: Text(
                  'yujin092444@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'ShrikHand',
                    fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
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

//Row(
//children: <Widget>[
//Icon(
//Icons.email,
//color: Colors.teal,
//),
//SizedBox(
//width: 10.0,
//),
//Text(
//'yujin092444@gmail.com',
//style: TextStyle(
//color: Colors.teal.shade900,
//fontFamily: 'ShrikHand',
//fontSize: 20.0,
//),
//)
//],
//),

//Row(
//children: <Widget>[
//Icon(
//Icons.phone,
//color: Colors.teal,
//),
//SizedBox(
//width: 10.0,
//),
//Text(
//'+82 010 8223 4093',
//style: TextStyle(
//color: Colors.teal.shade900,
//fontFamily: 'ShrikHand',
//fontSize: 20.0,
//),
//)
//],
//),