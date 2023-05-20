import 'package:connect/app/data/models/students_model.dart';
import 'package:connect/app/data/models/teacher_model.dart';
import 'package:connect/app/data/providers/emailer_provider.dart';
import 'package:connect/app/data/providers/students_provider.dart';
import 'package:connect/app/data/providers/teacher_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt countStudents = 0.obs;
  RxInt countTeachers = 0.obs;
  List<Student> students = [];
  List<Teacher> teachers = [];
  var loading = true.obs;
  getStudents() {
    StudentsProvider().getStudents();
  }

  getEmailer() {
    EmailerProvider().emailer();
  }

  getTeachers() {
    TeacherProvider().getTeacher();
  }

  callApi() {
    getEmailer();
    getStudents();
    getTeachers();
  }
}
