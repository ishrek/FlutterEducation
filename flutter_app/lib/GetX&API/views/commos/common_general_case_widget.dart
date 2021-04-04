import 'package:flutter/material.dart';
import 'package:flutter_app/GetX&API/controllers/GlobalController.dart';
import 'package:get/get.dart';

class CommonGeneralCaseWidget extends StatelessWidget {
  final GlobalController _globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _detailSelectedCountry(),
    );
  }

  Widget _detailSelectedCountry() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _confirmedItem(),
          _dividerItem(),
          _recoveredItem(),
          _dividerItem(),
          _deathsItem(),
        ],
      ),
    );
  }

  Widget _confirmedItem() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Confirmed", style: TextStyle(fontSize: 18)),
          Padding(padding: EdgeInsets.only(top: 8)),
          Obx(
            () => _totalOfCase(
                _globalController.countryDetailConfirmed.value.toString(),
                Colors.white),
          )
        ],
      ),
    );
  }

  Widget _recoveredItem() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Recovered", style: TextStyle(fontSize: 18)),
          Padding(padding: EdgeInsets.only(top: 8)),
          Obx(
            () => _totalOfCase(
                _globalController.countryDetailRecovered.value.toString(),
                Colors.greenAccent),
          )
        ],
      ),
    );
  }

  Widget _deathsItem() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Deaths", style: TextStyle(fontSize: 18)),
          Padding(padding: EdgeInsets.only(top: 8)),
          Obx(() => _totalOfCase(
              _globalController.countryDetailDeaths.value.toString(),
              Colors.redAccent))
        ],
      ),
    );
  }

  //Total case
  Widget _totalOfCase(String total, Color textColor) {
    return Text(
      total,
      style: TextStyle(
        color: textColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _dividerItem() {
    return Container(
      color: Colors.black45,
      width: 1.0,
      height: Get.height * 0.05,
    );
  }
}
