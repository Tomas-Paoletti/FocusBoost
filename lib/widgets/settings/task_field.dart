import 'package:flutter/material.dart';

class TaskField extends StatelessWidget {
  final Function(String) setTask;

  const TaskField({
    super.key,
    required this.setTask,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: TextField(
        onChanged: setTask,
        style: const TextStyle(
          fontFamily: 'Nunito',
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(115, 115, 115, 0.7),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Color.fromRGBO(1, 1, 1, 0.7),
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Color.fromRGBO(115, 115, 115, 0.7),
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          hintText: 'Escribe la tarea a realizar',
          hintStyle: const TextStyle(
            fontFamily: 'Nunito',
          ),
          suffixIcon: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
          contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        ),
      ),
    );
  }
}
