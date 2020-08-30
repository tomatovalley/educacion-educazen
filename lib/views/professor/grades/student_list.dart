import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class student_list extends StatefulWidget {
  @override
  _student_listState createState() => _student_listState();
}

class _student_listState extends State<student_list> {
  var student_style = new TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
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
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                    onPressed: () => {}, child: Text("Subir calificaciones")))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Calificaciones parcial 1",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text("Nombre")),
                            Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Lucia Lopez Diaz",
                                    style: student_style)),
                            Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Juana Lopez Diaz",
                                    style: student_style)),
                            Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Valentina Lopez Diaz",
                                    style: student_style)),
                            Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Isabela Lopez Diaz",
                                    style: student_style)),
                            Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("Juan  Lopez Diaz",
                                    style: student_style)),
                            Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("David Lopez Diaz",
                                    style: student_style)),
                          ],
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Tareas entregadas"),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("30/30", style: student_style)),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("28/30", style: student_style)),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("27/30", style: student_style)),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("30/30", style: student_style)),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("30/30", style: student_style)),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("30/30", style: student_style)),
                  ],
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Califcacion Total"),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ))),
                  ],
                ))
              ],
            ),
          ],
        ));
  }
}
