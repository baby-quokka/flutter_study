// 강의 23화 (Navigator와 pushNamed method)

import 'package:flutter/material.dart';
import 'package:flutter_basic_11/screen_a.dart';
import 'package:flutter_basic_11/screen_b.dart';
import 'package:flutter_basic_11/screen_c.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      // 라우트는 home 대신 initialRoute를 사용한다.
      initialRoute: '/',
      routes: {
        // 초기 경로
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
