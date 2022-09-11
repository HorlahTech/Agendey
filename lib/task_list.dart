import 'dart:collection';

import 'package:agendey/models/eack_task.dart';
import 'package:flutter/material.dart';

class Taskdata extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'First Task'),
    Task(name: 'Second Task'),
    Task(name: 'Third Task'),
  ];
  int get taskDataLength {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get gettasksList {
    return UnmodifiableListView(_taskList);
  }

  void addList({required String title}) {
    _taskList.add(Task(name: title));
    notifyListeners();
  }

  void updateList(Task task) {
    task.taskStateToggle();
    notifyListeners();
  }

  void deleteList(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }
}
