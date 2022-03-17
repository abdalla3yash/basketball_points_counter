import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
