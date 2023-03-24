import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:quiz_ui/ScoreScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 190, 146, 15),
          centerTitle: true,
          title: const Text("Quiz App", style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Center(
            child: InkWell(
              child: Column(
                children: [
                  SizedBox(height: 45),
                  Text(
                    "Welcom in Quiz App",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 120),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 190, 146, 15),
                    radius: 80,
                    child: Container(
                      color: Color.fromARGB(255, 190, 146, 15),
                      child: Text('Start',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScoreScreen()),
                );
              },
            ),
          ),
        ));
  }
}
