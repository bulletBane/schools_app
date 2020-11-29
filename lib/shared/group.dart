import 'package:school_up/shared/groupList.dart';
import 'package:school_up/shared/groupStudent.dart';
import 'package:flutter/material.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return GroupList();
  }
}
