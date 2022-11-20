import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Tarefas'),
            ),
            body: ListView(children: const [
              Task(
                  nome:
                      'Aprender Flutter assistindo aulas na Alura e realizando exercícios'),
              Task(nome: 'Aprender SQL'),
              Task(nome: 'Aprender Node'),
              Task(nome: 'Ir para a academia'),
              Task(nome: 'Aprender Flutter'),
              Task(nome: 'Aprender SQL'),
              Task(nome: 'Aprender Node'),
              Task(nome: 'Ir para a academia'),
              Task(nome: 'Aprender Flutter'),
              Task(nome: 'Aprender SQL'),
              Task(nome: 'Aprender Node'),
              Task(nome: 'Ir para a academia'),
            ]),
            floatingActionButton: FloatingActionButton(onPressed: () {})));
  }
}

class Task extends StatefulWidget {
  final String nome;
  const Task({required this.nome, super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: const Icon(Icons.arrow_drop_up)),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel / 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Nível: $nivel',
                      style: const TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
