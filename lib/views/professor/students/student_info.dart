import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class student_info extends StatefulWidget {
  @override
  _student_info createState() => _student_info();
}

var textStyle = new TextStyle(fontSize: 18);

class _student_info extends State<student_info> {
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
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: media.height * 0.3,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Jose Manuel Cabrerizo Clemente",
                  style: TextStyle(fontSize: 30))
            ])),
        Container(
            height: media.height * 0.2,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Porcentaje de tareas entregadas",
                                  style: textStyle)
                            ])),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("100%", style: textStyle),
                            Text("10/10", style: textStyle),
                          ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Puntaje de tareas entregadas",
                                  style: textStyle)
                            ])),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("30/30", style: textStyle),
                          ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Porcentaje de evaluacion", style: textStyle)
                            ])),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("93%", style: textStyle),
                          ]))
                ],
              ),
            ])),
        Container(
            height: media.height * 0.4,

            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Todas las tareas", style: TextStyle(fontSize: 30))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Tarea", style: textStyle)])),
                  ),
                  Expanded(
                      flex: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Fecha", style: textStyle),
                          ])),
                  Expanded(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Calificacion", style: textStyle),
                          ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child:
                        Container(
                          child:Row(
                              mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Paginas 10-12 del libro", style: textStyle)])),
                  )),
                  Expanded(
                      flex: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("30/ago", style: textStyle),
                          ])),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("10/10", style: textStyle),
                          ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child:  Container(
                            child:Row(
                                mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Resumen de la Independenia", style: textStyle)])),
                    )),
                  Expanded(
                      flex: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("24/ago", style: textStyle),
                          ])),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("10/10", style: textStyle),
                          ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child:  Container(
                            child:Row(
                                mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Biografia de Benito Juarez", style: textStyle)])),
                  )),
                  Expanded(
                      flex: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("27/ago", style: textStyle),
                          ])),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("10/10", style: textStyle),
                          ]))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child:  Container(
                            child:Row(
                                mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Paginas 8-9 del libro", style: textStyle)])),
                  )),
                  Expanded(
                      flex: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("27/ago", style: textStyle),
                          ])),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("10/10", style: textStyle),
                          ]))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child:  Container(
                            child:Row(
                                mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text("Paginas 6-7 del libro", style: textStyle)])),
                  )),
                  Expanded(
                      flex: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("25/ago", style: textStyle),
                          ])),
                  Expanded(
                      flex: 2,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("10/10", style: textStyle),
                          ]))
                ],
              ),
            ])),
      ],
    )));
  }
}
