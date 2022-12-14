// ignore_for_file: constant_identifier_names, no_leading_underscores_for_local_identifiers
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/model.dart';

const STUDENT_DB = 'student-database';

class StudentDb with ChangeNotifier {
  StudentDb._internal();
  static StudentDb instance = StudentDb._internal();
  factory StudentDb() {
    return instance;
  }

  // Initialize our list of contacts
  List<StudentModel> studentList = [];

  /// Refresh UI Screen
  ///  Get all student details and refreshing in UI
  Future<void> refreshUI() async {}

  /// Get student
  /// Get all students details from the hive box and load them into our state list
  Future<void> getStudents() async {
    var box = await Hive.openBox<StudentModel>(STUDENT_DB);

    // updating provider state data with  hive , and refresh the UI
    studentList = box.values.toList();
    notifyListeners();
  }

  /// Student count
  /// Return the length of student array
  int get studentCount {
    notifyListeners();
    return studentList.length;
  }

  /// Add Student
  /// - Save student data to hive box's
  /// - Update student array with hive data
  /// - Using notifyListeners to update Ui- consumer of student array
  Future<void> addStudent(StudentModel newStudent) async {
    var box = await Hive.openBox<StudentModel>(STUDENT_DB);
    // Add student details into box
    await box.put(newStudent.id, newStudent);

    // Update provider state data with a hive read and refresh
    studentList = box.values.toList();
    notifyListeners();
  }

  /// Delete Student Details from box
  Future<void> deleteStudent(String id) async {
    try {
      var box = await Hive.openBox<StudentModel>(STUDENT_DB);

      await box.delete(id);

      // Update Student List With all box values
      // studentList = box.values.toList();
      // await getStudents();
      log("Delete Student with id : $id");

      // Update UI
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }

  /// Edit Student
  /// Overwrites the existing student details based on key with brand  new updated student object
  Future<void> editStudent(
      {required StudentModel studentModel, required var id}) async {
    final _categoryDB = await Hive.openBox<StudentModel>(STUDENT_DB);
    _categoryDB.putAt(id, studentModel);

    ///
    ///
    ///-*----------to write code hear---------*-///
    ///
    ///
  }
}
