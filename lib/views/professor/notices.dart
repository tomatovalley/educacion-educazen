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
        "name": "Recordatorio de tareas",
        "period": "Recuerden subir sus tareas a tiempo",
        "current_students": "1/sep"
      },
      {
        "name": "Dudas sobre tareas",
        "period": "Si tienen dudas de tareas pueden enviarme un mensaje directo",
        "current_students": "30/ago"
      },
      {
        "name": "Inscripciones",
        "period": "Recuerden que las inscripciones empiezan a partir del 15 de agosto",
        "current_students": "01/ago"
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

                                      color:Colors.white,
                                      fontWeight: FontWeight.bold))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10, top: 10, left: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(e["period"], style: TextStyle(
                                  color:Colors.white,fontSize: 15))
                            ])),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 10, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Fecha: "+
                                    e["current_students"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:Colors.white,
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
