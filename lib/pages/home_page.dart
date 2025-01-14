import 'package:flutter/material.dart';
import 'package:mobile_app/untils/lista.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tareas = [
    ['Task 1', false],
    ['Task 2', false],
    ['Task 3', false],
    ['Task 4', false],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      tareas[index][1] = !tareas[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          'Listado de tareas',
        ),
        backgroundColor: const Color.fromARGB(255, 235, 10, 10),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: tareas.length,
          itemBuilder: (BuildContext context, index) {
            return Tarea(
              nombretarea: tareas[index][0],
              tareacompletada: tareas[index][1],
              onChanged: (value) => checkBoxChanged(index),
            );
          }),
    );
  }
}
