import 'package:connect/app/data/models/students_model.dart';
import 'package:connect/app/data/providers/students_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;
  List<Student> students = [];
  getStudents() async {
    await StudentsProvider().getStudents();
  }

  @override
  void onInit() {
    getStudents();
    super.onInit();
  }
}
