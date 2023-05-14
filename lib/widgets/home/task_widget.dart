import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String task;

  const TaskWidget({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: Colors.black87,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tarea: ',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              task.isNotEmpty ? task : '"Estudiar"',
              style: const TextStyle(
                fontFamily: 'Nunito',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
