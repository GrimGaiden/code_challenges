import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    var width2 = 60.0;
    var height2 = 60.0;
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Stack(
          children: [
            // Row 1 of 3 elements
            Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, bottom: 0.0, right: 0.0, left: 60.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, bottom: 0.0, right: 0.0, left: 120.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, bottom: 0.0, right: 0.0, left: 180.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            // Row 2 of 1 element
            Padding(
              padding: const EdgeInsets.only(
                  top: 120.0, bottom: 0.0, right: 0.0, left: 60.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            // Row 3 of 3 elements
            Padding(
              padding: const EdgeInsets.only(
                  top: 180.0, bottom: 0.0, right: 0.0, left: 60.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 180.0, bottom: 0.0, right: 0.0, left: 120.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 180.0, bottom: 0.0, right: 0.0, left: 180.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            // Row 4 of 1 element
            Padding(
              padding: const EdgeInsets.only(
                  top: 240.0, bottom: 0.0, right: 0.0, left: 60.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            // Row 5 of 3 elements
            Padding(
              padding: const EdgeInsets.only(
                  top: 300.0, bottom: 0.0, right: 0.0, left: 60.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 300.0, bottom: 0.0, right: 0.0, left: 120.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 300.0, bottom: 0.0, right: 0.0, left: 180.0),
              child: Container(
                width: width2,
                height: height2,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ));
  }
}
