import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX2/views/my_home_page.dart';
import 'package:get/get.dart';

class getX2_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}