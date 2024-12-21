// 18강 (sanck bar 만들기)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
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
      appBar: AppBar(
        title: Text(
          'Snack Bar',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      // 새로운 버전에서는 Builder로 감싸줄 필요가 없다. 생략가능!
      body: Builder(builder: (context) {
        return Center(
          child: TextButton(
            onPressed: () {
              // Scaffold.of에서 ScaffoldMessenger.of로 바뀌면서
              // context가 scaffold의 하위가 아니어도 코드는 이상이 없다!!
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Hello'),
              ));
            },
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              'Show me',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }),
    );
  }
}
