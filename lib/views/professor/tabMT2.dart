import 'package:educa_zen/views/professor/tarea.dart';
import 'package:flutter/material.dart';

class TabMT2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget tarea1 = Card(
                    color: Colors.lightGreen,
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Tarea()),
                            );
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 180,
                        child: 
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text('Ensayo inicial',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                          Padding(padding: EdgeInsets.only(top: 5), child: Text('Realizar un ensayo sobre las distintas causas de ...',
                          style: TextStyle(
                          fontSize: 15 ),),),
                          Padding(padding: EdgeInsets.only(top: 5), child: Text('Material de apoyo: http://docs.aws.com/file0183.pdf',
                          style: TextStyle(
                          fontSize: 15 ),),),
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Padding(padding: EdgeInsets.only(top: 23),
                          child: Text('Fecha de entrega: 23/09/19',
                          style: TextStyle(
                          fontSize: 16 ),),)
                            ,
                          ],)
                        ],)
                    
                      
                    ),)
                  );

        
    Widget tarea2 = Card(
                    color: Colors.lightBlue,
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 195,
                        child: 
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text('Mapa conceptual formulas',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18 ),),
                          Padding(padding: EdgeInsets.only(top: 5), child: Text('Realizar un mapa sobre las distintas formulas que se usan para describir...',
                          style: TextStyle(
                          fontSize: 15 ),),),
                          Padding(padding: EdgeInsets.only(top: 5), child: Text('Material de apoyo: http://youtube.com/JulioProfe/0948lsd.html',
                          style: TextStyle(
                          fontSize: 15 ),),),
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Padding(padding: EdgeInsets.only(top: 23),
                          child: Text('Fecha de entrega: 28/09/19',
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
                  tarea1,tarea2
                ],
              ),
            )
    );
  }
}