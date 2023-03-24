import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 190, 146, 15),
        centerTitle: true,
        title:
            const Text("Score Screen", style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text("Score", style: TextStyle(fontSize: 80, color: Colors.white)),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  '50',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 190, 146, 15),
                  ),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 190, 146, 15),
              radius: 80,
              child: Container(
                color: Color.fromARGB(255, 190, 146, 15),
                child: Text('50/50',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    )),
              ),
            ),
            // SizedBox(height: 60),
            SizedBox(height: 100),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(left: 200),
              child: GestureDetector(
                child: Text(
                  "Try Again >>(click here)",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 190, 146, 15),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
