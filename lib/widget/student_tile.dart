import 'package:flutter/material.dart';
import 'package:student_manager_app/model/student_model.dart';

class StudentTile extends StatelessWidget{
  final Students stu;
  const StudentTile({super.key, required this.stu});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: ListTile(
        title: Text('Name: ${stu.name}'),
        subtitle: Text('Age: ${stu.age}| Score: ${stu.score}'),
        trailing: Text('Grade: ${stu.getGrade()}'),
      ),
    );
  }

}