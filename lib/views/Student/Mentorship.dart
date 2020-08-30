import 'package:flutter/material.dart';

class Mentorship extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget tarea1 = Card(
      
      elevation: 10,
                    color: Colors.orange[200],
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 150,
                        child: 
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text('Matematicas I',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                          Text('26 de Sept',
                          style: TextStyle(
                          fontSize: 18 ),),
                          ],),
                          Padding(padding: EdgeInsets.only(top: 10), child: Text('Profesor: Carlos Escudero Mercado',
                          style: TextStyle(
                          fontSize: 15 ),),),
               
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Padding(padding: EdgeInsets.only(top: 23),
                          child: Text('Miercoles de 1-2 pm',
                          style: TextStyle(
                          fontSize: 16 ),),)
                            ,
                          ],)
                        ],)
                    
                      
                    ),)
                  );
    Widget tarea3 = Card(
      
      elevation: 10,
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 150,
                        child: 
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text('Historia',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                          Text('26 de Sept',
                          style: TextStyle(
                          fontSize: 18 ),),
                          ],),
                          Padding(padding: EdgeInsets.only(top: 10), child: Text('Profesor: Ignacio Lopez Valdovinos',
                          style: TextStyle(
                          fontSize: 15 ),),),
               
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Padding(padding: EdgeInsets.only(top: 23),
                          child: Text('Miercoles de 2-3 pm',
                          style: TextStyle(
                          fontSize: 16 ),),)
                            ,
                          ],)
                        ],)
                    
                      
                    ),)
                  );
      

    return Scaffold(
      
            body:new Container(
              padding: EdgeInsets.all(15),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,                
                children: <Widget>[
                  tarea1, tarea3
                ],
              ),
            )
    );
  }
}