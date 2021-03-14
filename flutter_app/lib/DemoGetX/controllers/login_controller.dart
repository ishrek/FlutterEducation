import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX/views/home_view.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;

class LoginController extends GetxController {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;

  @override
  void onInit() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  void apiLogin() async {
    // Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);

    Get.back();
    // Get.offNamed('/homeView');

    Get.to(() => HomeView());

    developer.log('apiLogin', name: 'my.app.category');
  }

  @override
  void onClose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}