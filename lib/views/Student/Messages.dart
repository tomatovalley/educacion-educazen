import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget lista1 = Card(
      elevation: 10,
        child: InkWell(
          splashColor: Colors.orange.withAlpha(30),
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(15),
              width: 400,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("images/avatar.jpg")))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ernesto Villagomez Bolaños',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Text('Hola como vas con tu tarea?')
                    ],
                  ),
                  
                  Tab(icon: Icon(Icons.done_all)
                  )
                ],
              )),
        ));
    Widget lista3 = Card(
      
      elevation: 10,
        child: InkWell(
          splashColor: Colors.orange.withAlpha(30),
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(15),
              width: 400,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("images/avatar.jpg")))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Carlos Escudero Mercado',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Text('Mira para los temas que\n vas a ver puedes ver estos videos')
                    ],
                  ),
                  
                  Tab(icon: Icon(Icons.done_all)
                  )
                ],
              )),
        ));

    Widget lista2 = Card(
      
      elevation: 10,
        child: InkWell(
          splashColor: Colors.orange.withAlpha(30),
          onTap: () {},
          child: Container(
              padding: EdgeInsets.all(15),
              width: 400,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("images/avatar.jpg")))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Luis Alberto Perez Rodriguez',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Text('Si, ya estoy entendiendo ese tema mejor')
                    ],
                  ),
                  
                  Tab(icon: Icon(Icons.done_all)
                  )
                ],
              )),
        ));

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {},
        ),
        body: new Container(
          padding: EdgeInsets.all(15),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[lista1, lista3, lista2],
          ),
        ));
  }
}
