import 'package:flutter_app/DemoGetX3/modules/apresentacao/apresentacao_page.dart';
import 'package:flutter_app/DemoGetX3/modules/home/home_page.dart';
import 'package:flutter_app/DemoGetX3/modules/splash/splash_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> SplashPage(),),
    GetPage(name: Routes.HOME, page:()=> HomePage(),),
    GetPage(name: Routes.APRESENTACAO, page:()=> ApresentacaoPage()),
  ];
}