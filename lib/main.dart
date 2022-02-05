import 'package:flutter/material.dart';
import 'package:to_do_app/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC1007E),
          secondary: const Color(0xFF9E9E9E),
        ),
      ),
      home: const ToDoPage(),
    );
  }
}
