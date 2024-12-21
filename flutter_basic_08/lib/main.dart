// 강의 20화 (container 위젯)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // 컨테이너는 child 위젯이 없을 경우 차지할 수 있는 최대치를 차지함!
      // 하지만 child를 가지게 되면 그 크기가 child의 크기만큼이 된다!
      body: SafeArea(
        // SafeArea : 화면 밖으로 빠져나가지 않도록 경계를 지정해줌
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          // margin은 위젯 바깥쪽 간격 설정, padding은 위젯 안쪽 간격 설정
          margin: EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
        ),
      ),
    );
  }
}
