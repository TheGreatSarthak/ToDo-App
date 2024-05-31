import 'package:hive_flutter/adapters.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box("myBox");

// run this method if 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
