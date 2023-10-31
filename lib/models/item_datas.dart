
import 'package:flutter/material.dart';
import 'package:get_it_done/models/task.dart';

// bu class benim state objemi tutuyor. Buradaki state her yerden erişebilirim...
class ItemData with ChangeNotifier {

  final List<Task> _tasks = [
    Task(title: "Peynir al"),
    Task(title: "Zeytin al"),
    Task(title: "Ders çalış"),
    Task(title: "Kitap oku"),
    Task(title: "Dışarı çık"),

  ];

  changeToggle(int index) {
    _tasks[index].toggleStatus();
    notifyListeners();
  }

  addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();

  }

  delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();

  }

  List<Task> get tasks => _tasks;
}
