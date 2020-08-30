import 'package:educa_zen/views/professor/tabMT1.dart';
import 'package:educa_zen/views/professor/tabMT2.dart';
import 'package:educa_zen/views/professor/tabMT3.dart';
import 'package:educa_zen/views/professor/tabMT4.dart';
import 'package:flutter/material.dart';

class Materia extends StatefulWidget {
  @override
  _MateriaState createState() => _MateriaState();
}

class _MateriaState extends State<Materia> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
//    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
//    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Matemáticas 1',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0C1A93)),
              )
            ],
          )),
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          new TabMT1(),
          new TabMT2(),
          new TabMT3(),
          new TabMT4()
        ],
        // set the controller
        controller: controller,
      ),


    ));
  }
}
