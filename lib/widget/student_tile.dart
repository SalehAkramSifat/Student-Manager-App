import 'package:flutter/material.dart';
import '../model/student_model.dart';

class StudentTile extends StatelessWidget {
  final Students student;
  const StudentTile({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(student.name),
        subtitle: Text('Age: ${student.age} | Score: ${student.score}'),
        trailing: Text('Grade: ${student.getGreade()}'),
      ),
    );
  }
}
