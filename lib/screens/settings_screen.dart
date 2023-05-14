import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/widgets/settings/save_button.dart';
import 'package:pomodoro_app/widgets/settings/settings_field.dart';
import 'package:pomodoro_app/widgets/settings/task_field.dart';
import 'package:provider/provider.dart';

import '../stores/pomodoro_store.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                ],
              ),
            ),
          ),
          title: const Text(
            'Ajustes de tiempo',
            style: TextStyle(
              fontFamily: 'Nunito',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Observer(
            builder: (context) {
              return Column(
                children: [
                  const SizedBox(height: 50),
                  TaskField(setTask: store.setTask),
                  const SizedBox(height: 50),
                  SettingsField(
                    title: 'Tiempo:    ',
                    time: store.workTime,
                    increment: store.incrementWorkTime,
                    decrement: store.decrementWorkTime,
                  ),
                  const SizedBox(height: 50),
                  SettingsField(
                    title: 'Descanso:',
                    time: store.breakTime,
                    increment: store.incrementBreakTime,
                    decrement: store.decrementBreakTime,
                  ),
                  const SizedBox(height: 50),
                  const SaveButton(),
                ],
              );
            },
          ),
        ));
  }
}
