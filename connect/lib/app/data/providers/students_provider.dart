import 'package:connect/app/data/models/students_model.dart';
import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class StudentsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return StudentModel.fromJson(map);
      if (map is List) {
        return map.map((item) => StudentModel.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'https://app.conext.in/';
  }

  getStudents() async {
    HomeController controller = Get.find();
    final response = await get('https://app.conext.in/mdsu/');
    final studentData = studentModelFromJson(response.bodyString!);
    controller.students = studentData.students;
    controller.count.value = studentData.count;
    return response.body;
  }
}
