import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto/screens/form_screen.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: [
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
          const SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FormScreen(),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
