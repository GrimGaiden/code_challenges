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
  IconData _icon = Icons.add;
  List<IconData> icons = [
    Icons.add,
    Icons.accessibility_outlined,
    Icons.cabin,
    Icons.dangerous,
    Icons.face,
    Icons.zoom_in,
    Icons.vaccines
  ];
  Color iconColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  void _changeIconAndColor() {
    setState(() {
      _changeIcon();
      _changeColor();
    });
  }

  void _changeIcon() {
    _icon = icons.elementAt(Random().nextInt(icons.length));
  }

  void _changeColor() {
    iconColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: _changeIconAndColor,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            fixedSize: const Size(75, 75),
            backgroundColor: iconColor),
        child: Icon(_icon),
      )),
    );
  }
}
