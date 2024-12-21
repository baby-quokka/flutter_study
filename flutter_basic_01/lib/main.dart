import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_basic_1',
      // 앱의 기본적인 테마 설정
      theme: ThemeData(
          // 앱에서 사용할 기본적인 색상 경본
          primarySwatch: Colors.blue),
      // 앱이 실행될 때 가장 먼저 화면에 보여주는 경로
      home: MyHomePage(), // 여기에 바로 Scaffold() 해도 됨!
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: Center(
        // 위젯 내 모든 요소들을 세로로 배치
        child: Column(
          children: [Text('Hello'), Text('Hello'), Text('Hello')],
        ),
      ),
    );
  }
}
