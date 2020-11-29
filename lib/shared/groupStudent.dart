import 'package:flutter/material.dart';

class GroupStudent extends StatefulWidget {
  @override
  _GroupStudentState createState() => _GroupStudentState();
}

class _GroupStudentState extends State<GroupStudent> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF651FFF),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text('Новый ученик'),
                IconButton(
                    icon: Icon(
                      Icons.done,
                      color: Color(0xFF651FFF),
                    ),
                    onPressed: null),
              ],
            ),
            content: Container(
              height: 180,
              child: Column(
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Имя',
                        labelStyle: TextStyle(
                          color: Color(0xFF651FFF),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xFF651FFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Фамилия',
                        labelStyle: TextStyle(
                          color: Color(0xFF651FFF),
                        ),
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Color(0xFF651FFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Заметки',
                        labelStyle: TextStyle(
                          color: Color(0xFF651FFF),
                        ),
                        prefixIcon: Icon(
                          Icons.people,
                          color: Color(0xFF651FFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF651FFF),
        title: Text(
          'Группа 0',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Color(0xFFD8C7FF),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Color(0xFFD8C7FF),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            color: Color(0xFF651FFF),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Введите название группы',
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF651FFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0DDBC7),
        onPressed: () {
          createAlertDialog(context);
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
