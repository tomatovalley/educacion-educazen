import 'package:flutter/material.dart';

class Grades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: new Container(
              padding: EdgeInsets.all(15),
            child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: new Text("Evaluación", style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold)),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: new Text("Matemáticas",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold)),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: new Text("Probabilidad",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold)),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: new Text("Estadística",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold)),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: new Text("Historia",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(bottom: 25),
                    child: new Text("1"),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 13),
                    child: new Text("100"),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text("96"),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text("90"),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text("93"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(bottom: 25),
                    child: new Text("2"),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                ],
              ),
            ),
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(bottom: 25),
                    child: new Text("3"),
                  ),
                  new Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                ],
              ),
            ),
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                     padding: EdgeInsets.only(bottom: 25),
                    child: new Text("4"),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                  new Container(
                     padding: EdgeInsets.only(bottom: 12),
                    child: new Text(""),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
