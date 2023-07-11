import 'package:flutter/material.dart';
import 'package:fluttercs24/dart/note_screen.dart';

void main() {
  runApp(const MyApp());
  // test
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  NotesScreen(),
    );
  }
}

class Logein extends StatelessWidget {
  const Logein({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "loge in",
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'gmail',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.mail,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          print('true');
                        },
                        child: const Text("loge in ")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print('true');
                      },
                      child: const Text("Register "),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
