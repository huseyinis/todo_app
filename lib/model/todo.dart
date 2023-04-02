class ToDo {
  final String? id;
  final String? todoText;
  bool isDone;

  ToDo({this.id, this.todoText, this.isDone = false});

  static List<ToDo> todoList = [
    ToDo(id: '01', todoText: 'Yapialcaklar', isDone: true),
    ToDo(id: '02', todoText: 'Yapialcaklar', isDone: true),
    ToDo(id: '03', todoText: 'Yapialcaklar'),
    ToDo(id: '04', todoText: 'Yapialcaklar'),
    ToDo(id: '05', todoText: 'Yapialcaklar'),
    ToDo(id: '05', todoText: 'Yapialcaklar'),
  ];
}
