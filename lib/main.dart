import 'dart:math';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _rRand = 255;
  int _gRand = 255;
  int _bRand = 255;

  void _setRandomColor() {
    setState(() {
      _rRand = Random().nextInt(255);
      _gRand = Random().nextInt(255);
      _bRand = Random().nextInt(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color.fromRGBO(_rRand, _gRand, _bRand, 1.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setRandomColor,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
