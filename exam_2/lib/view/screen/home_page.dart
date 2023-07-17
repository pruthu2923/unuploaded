import 'package:exam_2/utils/Myrouts.dart';
import 'package:exam_2/utils/globels.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Myrout.pdf);
          },
          icon: Icon(Icons.picture_as_pdf),
        ),
        centerTitle: true,
        title: Text(
          "To Do list",
          style: TextStyle(
              fontSize: 22, color: Colors.black45, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Globel.alltodo.;
            },
            icon: Icon(Icons.lock_reset),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),

        // scrollDirection: Axis.horizontal,
        children: List.generate(
          Globel.alltodo.length,
          (index) => ListTile(
            title: Text(
              "${Globel.alltodo[index].task1!}\n"
              "${Globel.alltodo[index].task2!}\n"
              "${Globel.alltodo[index].task3!}",
              style: TextStyle(fontSize: 22, color: Colors.black54),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed(Myrout.todo);
          setState(() {});
        },
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
