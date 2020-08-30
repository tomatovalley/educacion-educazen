import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './grades/main_grades.dart';
import 'package:educa_zen/views/professor/homeworks.dart';
import 'notices.dart';
import 'students_list.dart';

class professor_Subject extends StatefulWidget {
  @override
  _professor_SubjectState createState() => _professor_SubjectState();
}

class _professor_SubjectState extends State<professor_Subject> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    main_grades(),
    homeworks(),
    Notices(),
    students_list(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  List<Widget> _createCards(double height, double width) {
    List<Widget> cards = new List<Widget>();

    cards.add(Text(
      "Avisos de las materias",
      style: TextStyle(fontSize: 20),
    ));
    var advisingSchedule = [
      {
        "name": "Matematicas I",
        "period": "AGO-DIC 2020",
        "current_students": 13
      },
      {
        "name": "Matematicas II",
        "period": "AGO-DIC 2020",
        "current_students": 23
      },
      {"name": "Español", "period": "AGO-DIC 2020", "current_students": 19},
      {
        "name": "Ciencias Naturales",
        "period": "AGO-DIC 2020",
        "current_students": 19
      }
    ];
//    advisingSchedule.forEach((element) {print(element);});
    advisingSchedule.forEach((e) => {
          print(e),
          cards.add(Padding(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Container(
                width: width,
                height: height,
                color: Colors.amber[500],
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10, left: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(e["name"],
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10, left: 15),
                        child: Container(

                            child: Column(
                                children: [
                              Text(e["period"],
                                  maxLines: 100,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ))
                            ]))),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 10, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    e["current_students"].toString() +
                                        " alumnos inscritos",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ])),
                    ),
                  ],
                )),
              )))
        });

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
                height: 60.0,
              ),
            ],
          )),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            title: Text('Calificaciones'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Tareas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text('Avisos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('Alumnos'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
        unselectedItemColor: Colors.blue[300],
      ),
    );
  }
}
