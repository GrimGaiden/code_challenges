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
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                    "https://images.unsplash.com/photo-1605106646979-29e9ada573a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: TextButton.icon(
                      onPressed: null,
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.orange,
                      ),
                      label: const Text("")),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.lightBlue,
                  child: const Center(child: Text("Nombre")),
                ),
                const Text("Descripción")
              ],
            ),
          ),
        ));
  }
}
