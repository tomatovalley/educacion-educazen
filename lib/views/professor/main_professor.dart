import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'materia.dart';

class Main_mt extends StatefulWidget {
  @override
  _Main_mt createState() => _Main_mt();
}

class _Main_mt extends State<Main_mt> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {


    TextStyle optionStyle =
        TextStyle(fontSize: 35, fontWeight: FontWeight.bold);

    List<Widget> _widgetOptions = <Widget>[
      Container(height:10,width:30,color:Colors.amber),
      Container(height:10,width:30,color:Colors.green),
      Container(height:10,width:30,color:Colors.blue),
      Container(height:10,width:30,color:Colors.red),
    ];
    Widget materia1 = Card(
      color: Colors.orange[200],
      child: InkWell(
        splashColor: Colors.orange.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Materia()),
          );
        },
        child: Container(
            padding: EdgeInsets.all(15),
            width: 400,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Matemáticas 1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'AGO-DIC 2019',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 23),
                      child: Text(
                        '23 alumnos inscritos',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );

    Widget materia2 = Card(
      color: Colors.lightGreen,
      child: InkWell(
        splashColor: Colors.orange.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
            padding: EdgeInsets.all(15),
            width: 400,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Probabilidad',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'AGO-DIC 2019',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 23),
                      child: Text(
                        '31 alumnos inscritos',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
    Widget materia3 = Card(
      color: Colors.lightBlue,
      child: InkWell(
        splashColor: Colors.green.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
            padding: EdgeInsets.all(15),
            width: 400,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Estadística',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'AGO-DIC 2019',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 23),
                      child: Text(
                        '26 alumnos inscritos',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );

    void _onItemTapped(int index) {
      print(index);
      setState(() {
        _selectedIndex = index;
      });
    }

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
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            title: Text('Calificaciones'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Tareas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text('Avisos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('Alumnos'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
        unselectedItemColor: Colors.blue[300],
      ),
    );
  }
}
