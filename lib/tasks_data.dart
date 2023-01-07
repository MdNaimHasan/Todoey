import 'package:flutter/material.dart';

class Tasks_Data extends ChangeNotifier {
  List tasks = [
    "Wake up early",
    "Have breakfast",
    "Do some coding",
    "Don't watch TV",
    "Stay calm",
  ];

  void add_new_task(String task_name) {
    tasks.add(
      task_name,
    );
    notifyListeners();
  }
}
