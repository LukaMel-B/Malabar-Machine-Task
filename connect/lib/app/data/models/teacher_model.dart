// To parse this JSON data, do
//
//     final teacherModel = teacherModelFromJson(jsonString);

import 'dart:convert';

TeacherModel teacherModelFromJson(String str) =>
    TeacherModel.fromJson(json.decode(str));

String teacherModelToJson(TeacherModel data) => json.encode(data.toJson());

class TeacherModel {
  List<Teacher> staffs;
  int staffcount;

  TeacherModel({
    required this.staffs,
    required this.staffcount,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
        staffs:
            List<Teacher>.from(json["staffs"].map((x) => Teacher.fromJson(x))),
        staffcount: json["staffcount"],
      );

  Map<String, dynamic> toJson() => {
        "staffs": List<dynamic>.from(staffs.map((x) => x.toJson())),
        "staffcount": staffcount,
      };
}

class Teacher {
  String staffName;
  DateTime dob;
  String designation;
  String profilePic;
  String department;

  Teacher({
    required this.staffName,
    required this.dob,
    required this.designation,
    required this.profilePic,
    required this.department,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
        staffName: json["staff_name"],
        dob: DateTime.parse(json["dob"]),
        designation: json["designation"],
        profilePic: json["profile_pic"],
        department: json["department"],
      );

  Map<String, dynamic> toJson() => {
        "staff_name": staffName,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "designation": designation,
        "profile_pic": profilePic,
        "department": department,
      };
}
