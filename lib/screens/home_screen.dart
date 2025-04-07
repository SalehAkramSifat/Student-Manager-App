import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_manager_app/model/student_model.dart';
import 'package:student_manager_app/provider/student_provider.dart';
import 'package:student_manager_app/widget/student_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameCntrl = TextEditingController();
  TextEditingController ageCntrl = TextEditingController();
  TextEditingController scoreCntrl = TextEditingController();

  void _addStudent(){
    final name = nameCntrl.text;
    final age = int.tryParse(ageCntrl.text) ?? 0;
    final score = double.tryParse(scoreCntrl.text) ?? 0.0;

    if(name.isNotEmpty && age > 0 && score > 0){
      final newPost = Students(name: name, age: age, score: score);
      Provider.of<StudentProvider>(context,listen: false).addStudent(newPost);
      nameCntrl.clear();
      ageCntrl.clear();
      scoreCntrl.clear();
    }
  }



  @override
  Widget build(BuildContext context) {
    final students = Provider.of<StudentProvider>(context).student;

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Manager'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 12),
            TextField(
              controller: nameCntrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Student's Name",
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: ageCntrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Student's Age",
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: scoreCntrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Student's Score",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addStudent,
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text("Student's List"),
            Expanded(
              child:ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index){
                  return StudentTile(stu: students[index]);
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
