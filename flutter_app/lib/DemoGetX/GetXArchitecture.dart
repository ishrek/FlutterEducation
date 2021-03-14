import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX/Router.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


/*
* https://www.appwithflutter.com/flutter-state-management-with-getx/
* https://viblo.asia/p/getx-make-flutter-easy-part-2-4P856np15Y3
* https://viblo.asia/p/getx-make-flutter-easy-part-1-eW65G1wJZDO
* */
class GetXArchitecture extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Return home page
    return GetMaterialApp(
      title: 'GetX App',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      getPages: Routers.route,
      initialRoute: Routers.route[0].name,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          color: Colors.deepOrange,
          textTheme: TextTheme(
            headline6: GoogleFonts.exo2(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}