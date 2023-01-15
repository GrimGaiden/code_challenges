import 'package:code_challenges/screens/screen1.dart';
import 'package:code_challenges/screens/screen2.dart';
import 'package:code_challenges/screens/screen3.dart';
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
  int _selectedIndex = 0;
  final List _screens = const [Screen1(), Screen2(), Screen3()];

  void _selectedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bed),
            label: "Screen 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_export),
            label: "Screen 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel),
            label: "Screen 3",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _selectedItem,
      ),
    );
  }
}
