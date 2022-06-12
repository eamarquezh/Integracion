import 'package:flutter/material.dart';



class MyHomePage_2 extends StatefulWidget {
  const MyHomePage_2({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage_2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
              'presiona cualquier boton para auto incrementar.',
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
                      "Boton 1",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: _incrementCounter),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.deepOrangeAccent,
                    textColor: Colors.white,
                    child: Text(
                      "Boton 2",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: _incrementCounter),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      "Boton 3",
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
