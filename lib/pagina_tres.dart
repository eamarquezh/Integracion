import 'package:flutter/material.dart';

class MyHomePage_3 extends StatefulWidget {
  const MyHomePage_3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage_3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_3> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if(_counter<50){
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter>0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Presiona sumar para sumar 1 o restar para restar 1',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.black38,
                    textColor: Colors.white,
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: _decrementCounter),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.deepOrangeAccent,
                    textColor: Colors.white,
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: _incrementCounter),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text('Regresar'),
        icon: const Icon(Icons.arrow_circle_left_outlined ),
        backgroundColor: Colors.teal,
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
