class ToDo {
  final String? id;
  final String? todoText;
  bool isDone;

  ToDo({this.id, this.todoText, this.isDone = false});

  static List<ToDo> todoList = [
    ToDo(id: '1', todoText: 'Yapilacaklar ', isDone: true),
    ToDo(id: '2', todoText: 'Yapilacaklar ', isDone: true),
    ToDo(id: '3', todoText: 'Yapilacaklar '),
    ToDo(id: '4', todoText: 'Yapilacaklar '),
    ToDo(id: '5', todoText: 'Yapilacaklar '),
  ];
}
