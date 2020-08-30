import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class homeworks extends StatefulWidget {
  @override
  _homeworks createState() => _homeworks();
}

class _homeworks extends State<homeworks> with SingleTickerProviderStateMixin {
  List<Widget> _createCards(double height, double width) {
    List<Widget> cards = new List<Widget>();

    cards.add(Text(
      "Tareas",
      style: TextStyle(fontSize: 20),
    ));
    var advisingSchedule = [
      {
        "name": "Ensayo",
        "period": "Hacer un ensayo sobre la educacion",
        "date": "05/sep"
      },
      {
        "name": "Paginas del libro 10-12",
        "period": "Hacer las paginas 10-12 de su libro",
        "date": "03/sep"
      },
      {
        "name": "Paginas del libro 8-9",
        "period": "Leer y hacer las paginas 8-9 de su libro",
        "date": "01/sep"
      }
    ];
//    advisingSchedule.forEach((element) {print(element);});
    advisingSchedule.forEach((e) =>
    {
      print(e),
      cards.add(Padding(

          padding: EdgeInsets.only(top: 30, left: 10, right: 10),
          child: GestureDetector(
//              onTap:()=>{Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => {}),
//              )},
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
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Descripcion:" + e["period"],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15))
                            ])),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.only( right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Fecha limite: " +
                                    e["date"]
                                    ,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ])),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: EdgeInsets.only( right: 10),
                              child: RaisedButton(
                                onPressed: ()=>{},
                                child: Text("Ver"),
                              )
                          ),

                        ]
                    )
                  ],
                )),
              ))))
    });

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: FloatingActionButton(
                  onPressed: null, child: Icon(Icons.add),))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Center(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: _createCards(
                        media.height * 0.2, media.width * 0.8),
                  ))),
        ));
  }
}
