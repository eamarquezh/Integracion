import 'package:flutter/material.dart';
import 'package:integracion/pagina_dos.dart';
import 'package:integracion/pagina_tres.dart';
import 'package:integracion/pagina_cuatro.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    darkTheme: ThemeData(
      //Se indica que el tema tiene un brillo oscuro
      brightness: Brightness.dark,
      primarySwatch: Colors.teal,
    ),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina principal'),
      ),
      body: Center(        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Elige una opción')
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: Text(
                    "Uso de botones",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage_2(title: 'Uso de botones',)),
                    );
                    },
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                  color: Colors.deepOrangeAccent,
                  textColor: Colors.white,
                  child: Text(
                    "Contador simple",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage_3(title: 'Contador simple',)),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text(
                    "Operaciones basicas",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage_4(title: 'Operaciones basicas',)),
                  );
                },),
            ],
          ),
        ],
      ),
      ),
    );
  }
}

