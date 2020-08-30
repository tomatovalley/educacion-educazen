import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class students_list extends StatefulWidget {
  @override
  _students_list createState() => _students_list();
}

class _students_list extends State<students_list> {
  List<Widget> _createCards(double height, double width) {
    List<Widget> cards = new List<Widget>();

    cards.add(Text(
      "Avisos de las materias",
      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
    ));
    var advisingSchedule = [
      "JOSE MANUEL CABRERIZO CLEMENTE",
      "ALBERT AMOROS MATE",
      "JUANA SACRISTAN BENITEZ",
      "MARIA CARMEN DE LA IGLESIA SEBASTIAN",
      "SILVIA ALGABA PINTOR",
      "MARIA VICTORIA PAJUELO CARRO",
      "LAURA POMARES CALZADA",
      "BEATRIZ CALLEJON PARRAS",
      "CRISTIAN GALINDO CALLE",
      "ANTONIO SEGUI MADRID",
    ];
//    advisingSchedule.forEach((element) {print(element);});
    advisingSchedule.forEach((e) => {
          print(e),
          cards.add(Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(left:10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text(e)])),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(onPressed: () => {}, child: Text("Ver >"))
                      ]))
            ],
          ))
        });

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
       
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _createCards(media.height * 0.2, media.width * 0.8),
        ))));
  }
}
