// https://github.com/faisalramdan17/car_rental_lite
// https://jeffmcmorris.medium.com/getx-flutter-firebase-auth-example-b383c1dd1de2
//https://medium.com/flutter-community/the-flutter-getx-ecosystem-dependency-injection-8e763d0ec6b9
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/DemoGetX3/modules/splash/splash_page.dart';
import 'package:flutter_app/DemoGetX3/routes/app_pages.dart';
import 'package:flutter_app/DemoGetX3/theme/app_theme.dart';
import 'package:flutter_app/DemoGetX3/translations/app_translations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class DemoGetx3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      home: SplashPage(),
      translationsKeys: AppTranslation.translations,
      getPages: AppPages.pages,
      theme: appThemeData,
      defaultTransition: Transition.rightToLeftWithFade,
    );
  }
}


