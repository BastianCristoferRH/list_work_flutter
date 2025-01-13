import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List tareas = [
    ['Programar en Flutter', false],
    ['Limpiar entorno de trabajo', false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text(
          'Listado de tareas',
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: tareas.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 19,
                bottom: 0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(30),
                child: Text(
                  tareas[index][0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
