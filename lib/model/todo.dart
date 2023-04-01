// ignore_for_file: public_member_api_docs, sort_constructors_first
class ToDo {
  final String? id;
  final String? todoText;
  bool isDone;
  ToDo({
    this.id,
    this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todosList() {
    return [
      ToDo(id: '01', todoText: 'asdasd', isDone: true),
      ToDo(id: '02', todoText: 'asdasd', isDone: true),
      ToDo(id: '03', todoText: 'assfsdsd'),
      ToDo(id: '04', todoText: 'asdsfsdfsgdd'),
      ToDo(id: '05', todoText: 'aasdfsfdsd'),
    ];
  }
}
