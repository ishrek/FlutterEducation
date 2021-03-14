import 'dart:developer' as developer;
import 'package:get/get.dart';

import '../user_list_model.dart';

class HomeController extends GetxController {
  var userListData = List<Data>().obs;
  @override
  void onInit() {
    _apiGetUserList();
    super.onInit();
  }

  void _apiGetUserList() async {
    developer.log('_apiGetUserList', name: 'my.app.category');
  }

  void deleteItem(int index) {
    userListData.removeAt(index);
  }

  void dimissVC() {
    // Get.put(LoginController());
    developer.log('dimissVC', name: 'my.app.category');
    Get.back();
    // Get.offNamed('/loginView');
  }
}