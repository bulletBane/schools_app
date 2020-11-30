import 'package:flutter/material.dart';
import 'package:school_up/shared/group.dart';
import 'package:school_up/DB/Database.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DbHelper helper = DbHelper();
    helper.testDb();
    return MaterialApp(
      title: 'Flutter Demo',
      home: Group(),
    );
  }
}
