import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task(
      nome:
          'Aprender Flutter assistindo aulas na Alura e realizando exercícios',
      foto: 'assets/images/flutter.png',
      dificuldade: 5,
    ),
    Task(
      nome: 'Aprender SQL',
      foto: 'assets/images/sql.jpg',
      dificuldade: 4,
    ),
    Task(
      nome: 'Aprender Node',
      foto: 'assets/images/node.webp',
      dificuldade: 5,
    ),
    Task(
      nome: 'Gym',
      foto: 'assets/images/gym.jpg',
      dificuldade: 1,
    ),
    Task(
      nome: 'Descansar',
      foto: 'assets/images/descansar.jpg',
      dificuldade: 0,
    ),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(nome: name, foto: photo, dificuldade: difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
