import 'package:exam_2/utils/Myrouts.dart';
import 'package:exam_2/view/screen/home_page.dart';
import 'package:exam_2/view/screen/pdf.dart';
import 'package:exam_2/view/screen/plus_todo.dart';
import 'package:exam_2/view/screen/splesh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Myrout.splash,
      routes: {
        Myrout.home: (context) => home_page(),
        Myrout.todo: (context) => plus_todo(),
        Myrout.pdf: (context) => pdf_page(),
        Myrout.splash: (context) => splash(),
      },
    );
  }
}
