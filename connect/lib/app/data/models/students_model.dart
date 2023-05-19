// To parse this JSON data, do
//
//     final studentModel = studentModelFromJson(jsonString);

import 'dart:convert';

StudentModel studentModelFromJson(String str) =>
    StudentModel.fromJson(json.decode(str));

String studentModelToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
  List<Student> students;
  int count;

  StudentModel({
    required this.students,
    required this.count,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        students: List<Student>.from(
            json["students"].map((x) => Student.fromJson(x))),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "students": List<dynamic>.from(students.map((x) => x.toJson())),
        "count": count,
      };
}

class Student {
  String studentName;
  DateTime dob;
  String designation;
  String profilePic;
  String course;
  String batchYear;

  Student({
    required this.studentName,
    required this.dob,
    required this.designation,
    required this.profilePic,
    required this.course,
    required this.batchYear,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        studentName: json["student_name"],
        dob: DateTime.parse(json["dob"]),
        designation: json["designation"],
        profilePic: json["profile_pic"],
        course: json["course"],
        batchYear: json["batch_year"],
      );

  Map<String, dynamic> toJson() => {
        "student_name": studentName,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "designation": designation,
        "profile_pic": profilePic,
        "course": course,
        "batch_year": batchYear,
      };
}
