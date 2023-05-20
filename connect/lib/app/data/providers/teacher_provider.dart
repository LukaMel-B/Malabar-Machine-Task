import 'package:connect/app/data/models/teacher_model.dart';
import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class TeacherProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Teacher.fromJson(map);
      if (map is List) {
        return map.map((item) => Teacher.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  getTeacher() async {
    HomeController controller = Get.find();
    final response = await get('https://app.conext.in/mdcstaff/')
        .whenComplete(() => controller.loading.value = false);
    final teacherData = teacherModelFromJson(response.bodyString!);
    controller.teachers = teacherData.staffs;
    controller.countTeachers.value = teacherData.staffcount;
    controller.update();
    return response.body;
  }
}
