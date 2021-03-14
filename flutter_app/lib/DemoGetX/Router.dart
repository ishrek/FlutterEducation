import 'package:flutter_app/DemoGetX/views/home_view.dart';
import 'package:flutter_app/DemoGetX/views/login_view.dart';
import 'package:get/get.dart';

class Routers {
  static final route = [
    GetPage(
      name: '/loginView',
      page: () => LoginView(),
    ),
    GetPage(
      name: '/homeView',
      page: () => HomeView(),
    ),
  ];
}