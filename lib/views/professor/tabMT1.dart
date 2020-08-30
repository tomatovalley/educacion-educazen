import 'package:flutter/material.dart';

class TabMT1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget lista1 = Card(
                    color: Colors.orange[200],
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 55,
                        child: 
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[ 
                          Text('19 de Septiembre',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 ),),
                          Text('22/23',
                          style: TextStyle(
                          fontSize: 16 ),),
                          
                          ],)
                    
                      
                    ),)
                  );
      Widget lista3 = Card(
                    color: Colors.orange[200],
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 55,
                        child: 
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[ 
                          Text('17 de Septiembre',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 ),),
                          Text('18/23',
                          style: TextStyle(
                          fontSize: 16 ),),
                          
                          ],)
                    
                      
                    ),)
                  );
      
      Widget lista2 = Card(
                    color: Colors.orange[200],
                    child: InkWell(
                      splashColor: Colors.orange.withAlpha(30),
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 400,
                        height: 55,
                        child: 
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[ 
                          Text('18 de Septiembre',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17 ),),
                          Text('19/23',
                          style: TextStyle(
                          fontSize: 16 ),),
                          
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
                  lista1, lista2, lista3
                ],
              ),
            )
    );
  }
}