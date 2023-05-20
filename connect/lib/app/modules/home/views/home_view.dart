import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:connect/app/modules/home/widgets/main_page.dart';
import 'package:connect/app/modules/home/widgets/no_data_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.callApi();
    return Scaffold(body: Obx(() {
      final count = 0;
      // final count =
      //     controller.countStudents.value + controller.countTeachers.value;
      return (!controller.loading.value)
          ? (count > 0)
              ? const MainPageWidget()
              : const NoDataPageWidget()
          : const MainPageWidget();
    }));
  }
}
