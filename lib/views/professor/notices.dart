import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notices extends StatefulWidget {
  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  List<Widget> _createCards(double height, double width) {
    List<Widget> cards = new List<Widget>();

    cards.add(Text(
      "Avisos de las materias",
      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
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
                                      fontWeight: FontWeight.bold))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10, left: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(e["period"], style: TextStyle(fontSize: 15))
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
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Padding(
              padding: EdgeInsets.only(bottom:20),
            child:FloatingActionButton(onPressed: null,child: Icon(Icons.add),))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    body:Center(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _createCards(media.height * 0.2, media.width * 0.8),
      ))
    ));
  }
}
