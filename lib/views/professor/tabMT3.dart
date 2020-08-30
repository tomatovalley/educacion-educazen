import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabMT3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget tarea1 = Card(
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
                            Text('Aviso de junta',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                          Text('26 de Sept',
                          style: TextStyle(
                          fontSize: 18 ),),
                          ],),
                          Padding(padding: EdgeInsets.only(top: 10), child: Text('Se les recuerda a los padres de familia que abrá junta el 31/09',
                          style: TextStyle(
                          fontSize: 15 ),),),
               
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Padding(padding: EdgeInsets.only(top: 23),
                          child: Text('Aviso general',
                          style: TextStyle(
                          fontSize: 16 ),),)
                            ,
                          ],)
                        ],)
                    
                      
                    ),)
                  );

        
      
     
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>{
              
            },),
            body:new Container(
              padding: EdgeInsets.all(15),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,                
                children: <Widget>[
                  tarea1
                ],
              ),
            )
    );
  }
}