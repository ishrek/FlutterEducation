import 'package:flutter/material.dart';
import 'package:flutter_app/GetX&API/controllers/GlobalController.dart';
import 'package:flutter_app/GetX&API/views/commos/common_general_case_widget.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

class DetailCountryScreen extends StatelessWidget {
  final GlobalController _globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${_globalController.selectedCountries.value} Case Detail"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _buildChart(),
            Padding(padding: EdgeInsets.only(top: 16)),
            CommonGeneralCaseWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildChart() {
    return Container(
      child: Obx(
            () => PieChart(
          chartType: ChartType.ring,
          showLegends: true,
          dataMap: showChartData(),
          colorList: [Colors.white, Colors.greenAccent, Colors.redAccent],
          chartValueStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Map<String, double> showChartData() {
    Map<String, double> res = Map();
    res.putIfAbsent("Confirmed",
            () => _globalController.countryDetailConfirmed.value.toDouble());
    res.putIfAbsent("Recovered",
            () => _globalController.countryDetailRecovered.value.toDouble());
    res.putIfAbsent(
        "Deaths", () => _globalController.countryDetailDeaths.value.toDouble());
    return res;
  }
}