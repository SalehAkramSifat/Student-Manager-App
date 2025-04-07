import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_manager_app/provider/student_provider.dart';
import 'package:student_manager_app/screens/home_screen.dart';

main(){
  runApp(
      ChangeNotifierProvider(
        create: (context)=> StudentProvider(),
        child: MyApp(),));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
