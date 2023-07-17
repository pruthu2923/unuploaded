import 'package:flutter/material.dart';
import 'package:app/utils/product_utils.dart';
import 'package:app/views/screens/homepage.dart';

class MyDetailPage extends StatefulWidget {
  const MyDetailPage({super.key, required this.title});
  final String title;

  @override
  _MyDetailPageState createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.pinkAccent,
            height: double.infinity,
            width: 180,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 78, top: 20, end: 500, bottom: 870),
              child: Icon(
                Icons.menu_rounded,
                color: Color.fromRGBO(255, 255, 255, 0.6),
                size: 28,
              ),
            ),
          ),
    ),
    );
  }
}
