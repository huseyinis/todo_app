import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/todo_item.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _appBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Container(
                  child: Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 25),
                          child: Text(
                            'All ToDos',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TodoItem()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(hintText: 'Add ToDo Item', border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, right: 20),
                  decoration: BoxDecoration(
                    color: tdBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 35,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          prefixIcon: Icon(
            Icons.search,
            size: 20,
            color: tdGrey,
          ),
          hintText: 'Search',
          contentPadding: EdgeInsets.all(0),
          border: InputBorder.none,
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, size: 30, color: tdBlack),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
