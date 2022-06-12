import 'package:flutter/material.dart';

class MyHomePage_4 extends StatefulWidget {
  const MyHomePage_4({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  State<MyHomePage_4> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_4> {
  int _counter = 0;
  String _signo = "presiona un signo ara hacer operacion";
  String _resultado = "Aqui mostrara el resultado";
  double _numa = 0;
  double _numb = 0;
  final _datoa = TextEditingController();
  final _datob = TextEditingController();


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
  void suma() {
    setState(() {
      _numa = double.parse(_datoa.text);
      _numb = double.parse(_datob.text);
      _signo = "+";
      _resultado = (_numa + _numb).toString();
    });
  }

  void resta() {
    setState(() {
      _numa = double.parse(_datoa.text);
      _numb = double.parse(_datob.text);
      _signo = "-";
      _resultado = (_numa - _numb).toString();
    });
  }

  void multiplicacion() {
    setState(() {
      _numa = double.parse(_datoa.text);
      _numb = double.parse(_datob.text);
      _signo = "*";
      _resultado = (_numa * _numb).toString();
    });
  }

  void division() {
    setState(() {
      _numa = double.parse(_datoa.text);
      _numb = double.parse(_datob.text);
      _signo = "/";
      _resultado = (_numa / _numb).toString();
    });
  }

  void porcentaje() {
    setState(() {
      _numa = double.parse(_datoa.text);
      _numb = double.parse(_datob.text);
      _signo = "%";
      _resultado = (_numb / _numa).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
              child: TextField(
                controller: _datoa,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Ingresa cantidad 1',
                ),
              ),
            ),
            Text(_signo),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
              child: TextFormField(
                controller: _datob,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Ingresa cantidad 2',
                ),
              ),
            ),
            Text(
              _resultado,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    suma();
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    resta();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    multiplicacion();
                  },
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () {
                    division();
                  },
                  child: Text("/"),
                ),
                ElevatedButton(
                  onPressed: () {
                    porcentaje();
                  },
                  child: Text("%"),
                ),
              ],
            )
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
