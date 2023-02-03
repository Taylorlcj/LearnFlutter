import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Fireship Rules!"),
        ),
        body: const Center(
          child: SizedBox(
            height: 50,
            width: 100,
            child: Text("I am getting a headache"),
          ),
        ),
      ),
    );
  }
}
