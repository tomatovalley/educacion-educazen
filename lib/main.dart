import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:educa_zen/views/professor/main_professor.dart';
import 'package:flutter/material.dart';
import 'views/StudentMain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int follow = 0;

  void _setFollow(int value) {
    setState(() {
      follow = value;
    });
  }

  void _tryLogin() {
    switch (follow) {
      case 1:
        print(1);
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Main_mt()),
        );
        break;
      case 3:
        print(3);
        break;
    }

//       Navigator.push(
//        context,
//        MaterialPageRoute(builder: (context) => StudentMain()),
//      );
  }

  @override
  Widget build(BuildContext context) {
    Widget escuela = SizedBox(height: 0.0);
    if (follow != 3) {
      escuela = SizedBox(height: 0.0);
    }

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: _tryLogin,
        padding: EdgeInsets.all(12),
        color: Color(0xff0C1A93),
        child: Text('Iniciar sesión', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 55),
            child: Image.asset(
              'images/logo.png',
              fit: BoxFit.contain,
              height: 80.0,
            ),
          ),
          Padding(
            padding:
                new EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 320,
                    child: CustomRadioButton(
                      buttonColor: Theme.of(context).canvasColor,
                      buttonLables: [
                        "Tutor",
                        "Maestro",
                        "Padre",
                      ],
                      buttonValues: [
                        1,
                        2,
                        3,
                      ],
                      radioButtonValue: (value) =>
                          {print(value), _setFollow(value)},
                      horizontal: false,
                      width: 100,
                      elevation: 0,
                      enableShape: true,
                      selectedColor: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                new EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //   Center(
                //     child: Container(
                //       width: 320,
                //       child: CustomRadioButton(

                //       buttonColor: Theme.of(context).canvasColor,
                //       buttonLables: [
                //         "Alumno",
                //         "Maestro",
                //         "Padre",
                //       ],
                //       buttonValues: [
                //         1,
                //         2,
                //         3,
                //       ],
                //       radioButtonValue: (value) => _setFollow(value),
                //       horizontal: false,
                //       width: 100,
                //       elevation: 0,
                //       enableShape: true,
                //       selectedColor: Theme.of(context).accentColor,

                //   ),),
                // ),
              ],
            ),
          ),
          Padding(
              padding: new EdgeInsets.only(top: 0, left: 26, right: 26),
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: new BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              )),
          Padding(
              padding: new EdgeInsets.only(top: 15, left: 26, right: 26),
              child: TextFormField(
                obscureText: true,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: new BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 300,
                  child: loginButton,
                )
              ],
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
