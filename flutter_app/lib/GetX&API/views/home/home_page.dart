import 'package:flutter/material.dart';
import 'package:flutter_app/GetX&API/controllers/GlobalController.dart';
import 'package:flutter_app/GetX&API/views/global_case_widget.dart';
import 'package:flutter_app/GetX&API/views/home/SelectedCountryWidget.dart';
import 'package:get/get.dart';

//https://medium.com/@bayysp/what-is-getx-and-how-to-fetching-api-with-it-flutter-2fbcfd923de7
class Home_Page extends StatelessWidget {
  final GlobalController _globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid19 Monitoring"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: <Widget>[
            _buildLastUpdateItem(),
            GlobalCaseWidget(),
            _buildSelectedCountryCaseWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildLastUpdateItem() {
    return Container(
      child: Obx(
        () => Text("Last Update at : ${_globalController.lastUpdate.value}"),
      ),
    );
  }

  Widget _buildSelectedCountryCaseWidget() {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue.withOpacity(0.3),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 8.0,
            spreadRadius: 0.8,
          ),
        ],
      ),
      height: Get.height * 0.3,
      width: Get.width * 1,
      child: SelectedCountryWidget(),
    );
  }
}
