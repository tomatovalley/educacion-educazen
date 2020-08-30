import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './student_list.dart';


class main_grades extends StatefulWidget {
  @override
  _main_gradesState createState() => _main_gradesState();
}

class _main_gradesState extends State<main_grades> {

  var partialStyle = new TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Calificaciones por parcial", style: TextStyle(fontSize:20),),
        Container(
          width: media.width * 0.6,
          child: RaisedButton(
            textColor: Colors.white,
            onPressed: () => {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => student_list()),
            )},
            color: Colors.blue[600],
            child: Text("Parcial 1", style:partialStyle),
          ),
        ),
        Container(
          width: media.width * 0.6,
          child: RaisedButton(

            textColor: Colors.white,
            onPressed: () => {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => student_list()),
            )},
            color: Colors.blue[200],
            child: Text("Parcial 2", style:partialStyle),
          ),
        ),
        Container(
          width: media.width * 0.6,
          child: RaisedButton(
            textColor: Colors.white,
            onPressed: () => {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => student_list()),
            )},
            color: Colors.blue[200],
            child: Text("Parcial 3", style:partialStyle),
          ),
        ),
        Container(
          width: media.width * 0.6,
          child: RaisedButton(
            textColor: Colors.white,
            onPressed: () => {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => student_list()),
            )},
            color: Colors.blue[200],
            child: Text("Parcial 4", style:partialStyle),
          ),
        ),
      ],
    )));
  }
}
