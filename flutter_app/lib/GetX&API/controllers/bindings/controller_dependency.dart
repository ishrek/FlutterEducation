import 'package:flutter_app/GetX&API/networks/CovidDataSource.dart';
import 'package:get/get.dart';

import '../GlobalController.dart';

void bindingGlobalController() => Get.lazyPut<GlobalController>(
        () => GlobalController(covidDataSource: Get.find<CovidDataSource>()));