import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
    double height = MediaQuery.of(context).size.height;
    double topMarginInPercentage = 10;
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Image.network(
          'https://images.unsplash.com/photo-1605106646979-29e9ada573a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: (height * topMarginInPercentage / 100)),
          child: Container(
            child: const Text("TEXT",
                style: TextStyle(color: Colors.white, fontSize: 40.0)),
          ),
        ),
      ]),
    );
  }
}
