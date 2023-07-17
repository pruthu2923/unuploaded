import 'package:app/views/screens/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/MyRoutes.dart';
import 'package:app/views/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.home: (context) => MyHomePage(title: 'home'),
        MyRoutes.detailPage: (context) => MyDetailPage(title: 'detail'),
      },
    );
  }
}
