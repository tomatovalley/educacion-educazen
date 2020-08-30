import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:educa_zen/views/professor/materia.dart';
class Tarea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
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
            body: new Container(
              padding: EdgeInsets.all(15),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,                
                children: <Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                    Text('Alumno',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                    Text('Calificación',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                  ],),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                    Text('Juan Pedro Díaz Uva',
                          style: TextStyle(
                          fontSize: 17 ),),
                     new Container(
                       width: 75,
                       child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)
                      ,borderSide: new BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),),
                    ),
                  ),
                     )
                  ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                    Text('Abisai Pay Gonzalez',
                          style: TextStyle(
                          fontSize: 17 ),),
                     new Container(
                       width: 75,
                       child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)
                      ,borderSide: new BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),),
                    ),
                  ),
                     )
                  ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                    Text('Jose Alberto Luna Díaz',
                          style: TextStyle(
                          fontSize: 17 ),),
                     new Container(
                       width: 75,
                       child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)
                      ,borderSide: new BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),),
                    ),
                  ),
                     )
                  ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                    Text('Emanuel Alegría Camacho',
                          style: TextStyle(
                          fontSize: 17 ),),
                     new Container(
                       width: 75,
                       child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)
                      ,borderSide: new BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),),
                    ),
                  ),
                     )
                  ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                    Text('Octavio Manuel Muñoz',
                          style: TextStyle(
                          fontSize: 17 ),),
                     new Container(
                       width: 75,
                       child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '',
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)
                      ,borderSide: new BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),),
                    ),
                  ),
                     )
                  ],),
                  )
                ],
              ),
            ),
            )
    );
  }
}