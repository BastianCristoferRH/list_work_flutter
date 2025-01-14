import 'package:flutter/material.dart';

class Tarea extends StatelessWidget {
  const Tarea(
      {super.key,
      required this.nombretarea,
      required this.tareacompletada,
      this.onChanged});

  final String nombretarea;
  final bool tareacompletada;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 19,
        bottom: 0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 228, 14, 6),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            Checkbox(
              value: tareacompletada,
              onChanged: onChanged,
              checkColor: const Color.fromARGB(255, 235, 2, 2),
              activeColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            Text(
              nombretarea,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: tareacompletada
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationColor: Colors.white,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
