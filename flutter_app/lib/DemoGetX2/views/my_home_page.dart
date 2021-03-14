import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX2/controllers/my_home_controller.dart';
import 'package:get/get.dart';

import './about_page.dart';

//https://fluttertutorial.in/getx-in-flutter/
class MyHomePage extends StatelessWidget {
  final String title;
  final MyHomePageController controller = Get.put(MyHomePageController());
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(
                  () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            FlatButton(
                onPressed: () {
                  Get.to(() => AboutPage());
                },
                child: Text('About GetX')),
            FlatButton(
                onPressed: () {
                  Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.amberAccent);
                },
                child: Text('Show Snackbar')),
            FlatButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'GetX Alert',
                      middleText: 'Simple GetX alert',
                      textConfirm: 'Okay',
                      confirmTextColor: Colors.amberAccent,
                      textCancel: 'Cancel');
                },
                child: Text('Show AlertDialog'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
