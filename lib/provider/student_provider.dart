import 'package:flutter/cupertino.dart';
import '../model/student_model.dart';

class StudentProvider with ChangeNotifier {
  List <Students> _students =[];

  List<Students> get student => _students;

  void addStudent(Students student){
    _students.add(student);
    notifyListeners();
  }
}