import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Image.asset('assets/images/logo_home.png'),
            ),
            const Text(
              "Lista de Tarefas",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("ADD"),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, index) {
                  return CheckboxListTile(
                    value: false,
                    onChanged: (value) {},
                    title: Text('num $index'),
                    secondary: const Icon(Icons.check_circle),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
