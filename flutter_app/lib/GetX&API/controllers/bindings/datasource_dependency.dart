import 'package:flutter_app/GetX&API/networks/CovidDataSource.dart';
import 'package:get/get.dart';

void bindingCovidDataSource() => Get.lazyPut<CovidDataSource>(() => CovidDataSource());