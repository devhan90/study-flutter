import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그배너 없앰.
      title: 'First app',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('BBANTO'),
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 시작점 정렬
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/dinosaur.png'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                  height: 60.0, // 디바이더의 위아래 간격 30 + 30 px
                  color: Colors.grey[850],
                  thickness: 0.5,
                  endIndent: 30.0,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('BBABTO',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'BBANTO POWER LEVEL',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('14',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10.0),
                    Text('using lightsaber',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10.0),
                    Text('face hero tattoo',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(width: 10.0),
                    Text('fire flames',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        ))
                  ],
                ),
                Center(
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assets/monster.png'),
                  radius: 40.0, // radius가 크기를 키워주고 줄여주고함.
                  backgroundColor: Colors.amber[800],
                )),
              ],
            )));
  }
}
