import 'package:flutter/material.dart';

void main() => runApp(StudentGrades());

class StudentGrades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calificaciones'),
      ),
      body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    decoration: new BoxDecoration(color: Colors.grey),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text(" "),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("Español"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("Matematicas"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("Ciencias Naturales"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("Historia"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("1"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("100"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("95"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("86"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("78"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("2"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("95"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("95"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("86"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("90"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("3"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("97"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("90"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("95"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text("86"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text("4"),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.red),
                                child: new Text(" "),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text(" "),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text(" "),
                              ),
                              new Container(
                                decoration:
                                    new BoxDecoration(color: Colors.amber),
                                child: new Text(" "),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ])
          ]),
    );
  }
}
