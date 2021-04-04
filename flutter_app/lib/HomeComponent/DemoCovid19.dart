import 'package:flutter/material.dart';
import 'package:flutter_app/GetX&API/controllers/bindings/ControllerBindings.dart';
import 'package:flutter_app/GetX&API/views/detail/detail_country_screen.dart';
import 'package:flutter_app/GetX&API/views/home/home_page.dart';
import 'package:get/get.dart';

class DemoCovid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Home_Page(),
          binding: ControllerBindings(),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailCountryScreen(),
          binding: ControllerBindings(),
        )
      ],
      theme: ThemeData.dark(),
    );
  }
}


// https://github.com/bayysp/Covid19Monitoring-With-GetX
class DemoCovi19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DemoCovid19(),
          ),
        );
      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.green,
        ),
        child: Text(
          'Covid',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}