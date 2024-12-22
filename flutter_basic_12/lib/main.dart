// 강의 24화 (퀴즈 해답 1)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 잘못된 방법!! -> 모든 위젯은 MaterialApp에 감싸져야 하는데 MaterialPageRoute의 context가 MaterialApp 위를 가리킴!!!
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Center(
//         child: ElevatedButton(
//             onPressed: () => Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => ScreenA())),
//             child: child),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScreenA())),
          child: Text('Go to Screen A')),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Go to the fist Page')),
      ),
    );
  }
}
