import 'package:flutter/material.dart';
import 'package:get_x/init.controller.dart';
import 'package:get_x/task/form/form_ui.dart';

void main() {
  InitController.getAllController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const FormUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
