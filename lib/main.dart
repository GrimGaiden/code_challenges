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
  int _counter = 0;
  String _message = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _setMessage();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _setMessage();
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _setMessage();
    });
  }

  void _setMessage() {
    if (_counter < -5) {
      _message = "Esto es muy poco";
    } else if (_counter > 5) {
      _message = "Esto es mucho";
    } else {
      _message = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: _resetCounter,
                    child: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                _message,
                style: const TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
