import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX3/modules/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomNextPrevious extends GetView {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => controller.previousPage()),
              TextResponsive(controller.screen > 0 ? controller.topics[controller.screen-1] : '' )
            ],
          ),
          Row(
            children: [
              TextResponsive(controller.topics[controller.screen+1]),
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () => controller.nextPage()),
            ],
          ),
        ],
      ),
    );
  }
}
