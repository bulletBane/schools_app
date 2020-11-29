import 'package:school_up/shared/groupAdd.dart';
import 'package:school_up/shared/groupStudent.dart';
import 'package:flutter/material.dart';

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF651FFF),
        title: Text(
          'Группа',
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
        onPressed: null,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
