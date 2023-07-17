import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    homeController.getAllPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (HomeController homeController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Photos"),
          ),
          body: GridView.builder(
            itemCount: homeController.photosList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Image.network(
              homeController.photosList[index].url!,
            ),
          ),
        );
      },
    );
  }
}
