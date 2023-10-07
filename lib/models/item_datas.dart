import 'package:flutter/material.dart';
import 'package:get_it_done/models/task.dart';

class ItemData with ChangeNotifier {
  List<Task> tasks = [
    Task(title: "Peynir al"),
    Task(title: "Zeytin al"),
    Task(title: "Ders çalış"),
    Task(title: "Kitap oku"),
    Task(title: "Dışarı çık"),

  ];

  changeToggle(int index) {
    tasks[index].toggleStatus();
    notifyListeners();
  }

  addTask(String title) {
    tasks.add(Task(title: title));
    notifyListeners();

  }
}
