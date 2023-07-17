import 'package:flutter/material.dart';

void main() {
  String demoBodytext =
      "Hello\n\n\n\n\n\n\n\n\n\n\nDart\n\n\n\n\n\n\n\n\n\n\nFlutter";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            demoBodytext,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.yellow,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
