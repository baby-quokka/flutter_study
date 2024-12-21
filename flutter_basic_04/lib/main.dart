// Drawer만들기

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
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
          'Appbar icon menu',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink[200],
        centerTitle: true,
        elevation: 0,
        // Leading : AppBar의 왼쪽, 간단한 위젯
        // leading: IconButton(
        //     onPressed: () {
        //       // ignore: avoid_print
        //       print('menu button is cliked');
        //     },
        //     icon: Icon(Icons.menu)),
        // actions : AppBar의 오른쪽, 복수의 아이콘 버튼
        actions: [
          IconButton(
              onPressed: () {
                print('Shopping cart button is cliked');
              },
              icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                print('Search button is cliked');
              },
              icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              // 현재 계정
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/quokka.png'),
                backgroundColor: Colors.white,
              ),
              // 다른 계정
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/red.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('Quokka'),
              accountEmail: Text('Quokka@gmail.com'),
              onDetailsPressed: () {
                print('arrow is cliked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  // 곡률 만들기
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              // Leading : 왼쪽에 배치
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is cliked');
              },
              // trailing : 오른쪽에 배치 (AppBar의 actions와 같음)
              trailing: Icon(Icons.add),
            ),
            ListTile(
              // Leading : 왼쪽에 배치
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is cliked');
              },
              // trailing : 오른쪽에 배치 (AppBar의 actions와 같음)
              trailing: Icon(Icons.add),
            ),
            ListTile(
              // Leading : 왼쪽에 배치
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is cliked');
              },
              // trailing : 오른쪽에 배치 (AppBar의 actions와 같음)
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
