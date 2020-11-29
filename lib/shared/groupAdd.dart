import 'package:flutter/material.dart';
import 'package:school_up/shared/groupStudent.dart';

class GroupAdd extends StatefulWidget {
  @override
  _GroupAddState createState() => _GroupAddState();
}

class _GroupAddState extends State<GroupAdd> {
  bool edit = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GroupStudent(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              child: Text(
                '0',
                style: TextStyle(
                    color: Color(0xFF651FFF),
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              backgroundColor: Color(0xFFD1BCFF),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        edit
                            ? Container(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Группа 0',
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            : Text(
                                'Группа 0',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                        edit
                            ? IconButton(
                                icon: Icon(
                                  Icons.done,
                                  color: Color(0xFF651FFF),
                                ),
                                onPressed: () {
                                  setState(() {
                                    edit = !edit;
                                  });
                                },
                              )
                            : IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Color(0xFF8D8D8D),
                                ),
                                onPressed: () {
                                  setState(() {
                                    edit = !edit;
                                  });
                                },
                              ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Кол-во учеников: ",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "4",
                          style: TextStyle(color: Color(0xFF651FFF)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
