import 'package:flutter/material.dart';
import 'package:get_x/init.controller.dart';
import 'package:get_x/task/counterby_2/counter_app_ui.dart';

void main() {
  InitController.getAllController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CounterBy2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
