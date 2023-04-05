import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/model/todo.dart';

class ToDoDataBase {
  List<ToDo> dbToDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

//run this method if this is the 1st time  ever opening this app
  void createInitialData() {
    dbToDoList = [ToDo(id: '01', todoText: 'Yapilacak islerinizi burada siralayin.')];
  }

  //load the data from database
  void loadData() {
    dbToDoList = _myBox.get("TODOLIST");
  }

  //update the database

  void updateDataBase() {
    _myBox.put("TODOLIST", dbToDoList);
  }
}
