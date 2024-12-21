// 강의 21강 (column, row 위젯 정렬)

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          // Row는 Column과 똑같은 방식으로 하되, height와 width를 바꿔주면 된다!
          child: Column(
            // <세로축 정렬>
            // mainAxisAlignment는 child들의 width만큼 세로로 다 잡아먹음!
            // mainAxisAlignment: MainAxisAlignment.center,

            // 이렇게 하면 딱 children의 크기만큼만 가짐!
            // mainAxisSize: MainAxisSize.min,

            // 아래에서 위로 쌓음!
            // verticalDirection: VerticalDirection.up,

            // 일정한 간격을 가짐!
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // 시작과 끝은 양끝에 배치되고 일정한 간격을 가짐!
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // <가로축 정렬>
            // 오른쪽을 기준으로 정렬 (children 중에 width가 젤 큰 것 기준으로)
            // crossAxisAlignment: CrossAxisAlignment.end,

            // 가로 방향으로 쭉 채우기
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              // 가장 오른쪽에 맞춰서 정렬
              // Container(
              //   width: double.infinity,
              // ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
