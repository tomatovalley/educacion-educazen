import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './professor_subject.dart';
import './notices.dart';
import './notices.dart';

import 'materia.dart';

class Main_mt extends StatefulWidget {
  @override
  _Main_mt createState() => _Main_mt();
}

class _Main_mt extends State<Main_mt> with SingleTickerProviderStateMixin {
  List<Widget> _createCards(double height, double width) {
    List<Widget> cards = new List<Widget>();

    cards.add(Text(
      "Mis materias",
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
              child: GestureDetector(
                  onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => professor_Subject()),
                        )
                      },
                  child: Container(
                    width: width,
                    height: height,
                    color: Colors.amber[500],

                    child: (Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(bottom: 10, top: 10, left: 15),
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
                            padding:
                                EdgeInsets.only(bottom: 10, top: 10, left: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(e["period"],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15))
                                ])),
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
                  ))))
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
        body: Center(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children:
                        _createCards(media.height * 0.2, media.width * 0.8),
                  ))),
        ));
  }
}
