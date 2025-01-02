// ignore_for_file: avoid_print
// 조금 매운맛 강의 2화 (Stateful widget)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              SizedBox(
                height: 10,
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                        print("$counter");
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                        print("$counter");
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
