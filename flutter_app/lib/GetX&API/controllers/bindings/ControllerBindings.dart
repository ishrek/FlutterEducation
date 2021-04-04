import 'package:flutter_app/GetX&API/controllers/bindings/controller_dependency.dart';
import 'package:flutter_app/GetX&API/controllers/bindings/datasource_dependency.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    bindingCovidDataSource();
    bindingGlobalController();
  }
}