import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:student_manager_app/model/student_model.dart';

class StudentProvider with ChangeNotifier{
  List<Students> _students = [];

  List<Students> get students => _students;

  void addStudent(Students students) {
    _students.add(students);
    notifyListeners();
  }
}