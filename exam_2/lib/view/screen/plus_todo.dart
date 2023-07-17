import 'package:exam_2/modal/modal.dart';
import 'package:exam_2/utils/globels.dart';
import 'package:flutter/material.dart';

class plus_todo extends StatefulWidget {
  const plus_todo({Key? key}) : super(key: key);

  @override
  State<plus_todo> createState() => _plus_todoState();
}

class _plus_todoState extends State<plus_todo> {
  String? task1;
  String? task2;
  String? task3;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String? todo;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text(
          "Add todo",
          style: TextStyle(
              fontSize: 22, color: Colors.black45, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                Globel.alltodo.add(
                  add_todo(task1: task1!, task2: task2!, task3: task3!),
                );
                Navigator.of(context).pop();
              }
            },
            icon: Icon(Icons.done),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "task 1",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your to do program 1",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please Enter your to do program";
                  } else {
                    return null;
                  }
                },
                onSaved: (val) {
                  task1 = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "task 2",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your to do program",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please Enter your to do program 2";
                  } else {
                    return null;
                  }
                },
                onSaved: (val) {
                  task2 = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "task 3",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your to do program 3",
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please Enter your to do program";
                  } else {
                    return null;
                  }
                },
                onSaved: (val) {
                  task3 = val;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
