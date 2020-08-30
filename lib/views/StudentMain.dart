import 'package:flutter/material.dart';
import 'package:educa_zen/views/Student/Grades.dart';
import 'package:educa_zen/views/Student/Mentorship.dart';
import 'package:educa_zen/views/Student/Homeworks_notifications.dart';
import 'package:educa_zen/views/Student/Messages.dart';
import 'package:educa_zen/views/StudentGrades.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentMain extends StatefulWidget {
  @override
  _StudentMain createState() => _StudentMain();
}

class _StudentMain extends State<StudentMain>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
              )
            ),
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          new Grades(),
          new Mentorship(),
          new Messages(),
          new Homeworks_notifications()
        ],
        // set the controller
        controller: controller,
      ),
      // body: new Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     mainAxisSize: MainAxisSize.max,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       new Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           // mainAxisSize: MainAxisSize.max,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: <Widget>[
      //             new Image.asset(
      //               'images/avatar.jpg',
      //               fit: BoxFit.fill,
      //               width: 150.0,
      //               height: 150.0,
      //             ),
      //             new Text(
      //               "Juan Jose Perez Prado",
      //               style: new TextStyle(fontSize: 30.0, fontFamily: "Roboto"),
      //             ),
      //             new Row(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               mainAxisSize: MainAxisSize.max,
      //               children: <Widget>[
      //                 new Text(
      //                   "Porcentaje de asistencia ",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //                 new Text(
      //                   "96%",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //               ],
      //             ),
      //             new Row(
      //               mainAxisSize: MainAxisSize.max,
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: <Widget>[
      //                 new Text(
      //                   "Porcentaje de tareas entregadas ",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //                 new Text(
      //                   "100%",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //               ],
      //             ),
      //             new Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               mainAxisSize: MainAxisSize.max,
      //               children: <Widget>[
      //                 new Text(
      //                   "Porcentaje de evaluacion ",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //                 new Text(
      //                   "45%",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //               ],
      //             ),
      //             new Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               mainAxisSize: MainAxisSize.max,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: <Widget>[
      //                 new Text(
      //                   "Porcentaje de participacion ",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //                 new Text(
      //                   "92%",
      //                   style:
      //                       new TextStyle(fontSize: 15.0, fontFamily: "Roboto"),
      //                 ),
      //               ],
      //             ),
      //           ])
      //     ]),

      bottomNavigationBar: new Material(
        shadowColor: Colors.black,
        elevation: 32.0,
        // set the color of the bottom navigation bar
        color: Colors.white,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          unselectedLabelColor: Colors.grey,
          indicatorColor: Color(0xff0C1A93),
          labelColor: Color(0xff0C1A93),
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.school),
              text: "Calificaciones",
            ),
            new Tab(
              icon: new Icon(Icons.line_style),
              text: "Tutorias",
            ),
            new Tab(
              icon: new Icon(Icons.send),
              text: "Mensajes",
            ),
            new Tab(
                child: Column(
              children: <Widget>[
                new Stack(fit: StackFit.passthrough,
                  children: <Widget>[
                    new Icon((Icons.notifications)),
                    new Positioned(
                      right: 11,
                      top: 11,
                      child: new Container(
                        padding: EdgeInsets.all(2),
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                       
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Text("Avisos")
              ],
            )),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
