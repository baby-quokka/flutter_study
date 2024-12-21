// (프로필 만들기: 아바타에 이미지 삽입, 분할, 정렬 등등)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 오른쪽 위 빨간줄 없애기
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800], // 화면 backgound 설정
      // 앱 화면 상단 헤더 구현
      appBar: AppBar(
        title: Text('BBANTO',
            style: TextStyle(
                color: Colors.white, // title 색깔 흰색으로 변경
                fontWeight: FontWeight.bold // title 두껍게
                )),
        backgroundColor: Colors.amber[700], // title background 색 설정
        centerTitle: true, // title 중앙에 위치
        elevation: 0.0, // 그림자 없애기
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            // 시작점 기준 정렬 (30,40,0,0)
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 동그란 아바타 생성
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/red.png'),
                  radius: 60.0,
                ),
              ),
              // 창 나누기
              Divider(
                height: 60.0, // 위 아래 합쳐서 60임!!
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0, // 시작점을 30.0으로 설정했으므로 30.0 남기고 끝내기
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 글자 간격
                ),
              ),
              // Text간 간격 띄어주기 (height, width)
              SizedBox(
                height: 10.0,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 글자 간격
                ),
              ),
              // Text간 간격 띄어주기 (height, width)
              SizedBox(
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'using lightsaber',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'fire flames',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/yellow.png'),
                  radius: 40.0,
                  backgroundColor: Colors.amber[800],
                ),
              )
            ],
          )),
    );
  }
}
