class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDo(id: '03', todoText: 'Go Market'),
      ToDo(id: '04', todoText: 'Morning Exercise'),
      ToDo(id: '05', todoText: 'Make Dinner'),
      ToDo(id: '06', todoText: 'Morning Exercise'),
    ];
  }
}
