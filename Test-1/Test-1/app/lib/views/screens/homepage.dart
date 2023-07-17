import 'package:flutter/material.dart';
import 'package:app/utils/product_utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 50),
          child: Icon(
            Icons.menu,
            color: Color.fromRGBO(0, 0, 0, 0.3),
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_basket_outlined,
            color: Color.fromRGBO(0, 0, 0, 0.3),
          )
        ],
      ),*/
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
          Align(
            alignment: Alignment(3.8, 0),
            child: Container(
              color: Colors.white,
              height: double.infinity,
              child: Padding(
                padding:
                    EdgeInsetsDirectional.only(end: 310, top: 20, bottom: 870),
                child: Icon(
                  Icons.shopping_basket_outlined,
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 40, top: 140),
            child: Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    /*decoration:
                        DecorationImage(image: NetworkImage
                          (
                          ${data['thumbnail']
                          },
                          ),
                        ),*/
                    height: 200,
                    width: 400,
                    color: Color.fromRGBO(255, 255, 255, 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
