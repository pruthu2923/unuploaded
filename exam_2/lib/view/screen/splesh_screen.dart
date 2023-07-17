import 'dart:async';

import 'package:exam_2/utils/Myrouts.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void changeScreen() {
    Timer.periodic(
      Duration(seconds: 3),
      (tick) {
        Navigator.of(context).pushReplacementNamed(Myrout.home);
        tick.cancel();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.network(
              "https://media.tenor.com/tQOnyocuYJQAAAAC/master-procrastinator-procrastinator.gif",
              height: 250,
            ),
            Spacer(),
            Text(
              "To Do List",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
