
import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
    primarySwatch: Colors.blueGrey,
    canvasColor: const Color.fromARGB(255, 44, 44, 44),
    textTheme: const TextTheme(
        bodyText2: TextStyle(color: Colors.white, fontFamily: "Stormning"),
        headline4: TextStyle(color: Colors.white, fontFamily: "Stormning")),
  );
}
