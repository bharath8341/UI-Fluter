import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'The basic math operations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _operand1Controller = TextEditingController();
  final TextEditingController _operand2Controller = TextEditingController();
  String result = '';

  void add() {
    final int? operand1 = int.tryParse(_operand1Controller.text);
    final int? operand2 = int.tryParse(_operand2Controller.text);
    if (operand1 == null || operand2 == null) {
      setState(() {
        result = 'Invalid input';
      });
      return;
    }
    int res = operand1 + operand2;
    setState(() {
      result = '$res';
    });
  }
  void sub() {
    final int? operand1 = int.tryParse(_operand1Controller.text);
    final int? operand2 = int.tryParse(_operand2Controller.text);
    if (operand1 == null || operand2 == null) {
      setState(() {
        result = 'Invalid input';
      });
      return;
    }
    int res = operand1 - operand2;
    setState(() {
      result = '$res';
    });
  }
  void mul() {
    final int? operand1 = int.tryParse(_operand1Controller.text);
    final int? operand2 = int.tryParse(_operand2Controller.text);
    if (operand1 == null || operand2 == null) {
      setState(() {
        result = 'Invalid input';
      });
      return;
    }
    int res = operand1 * operand2;
    setState(() {
      result = '$res';
    });
  }
  void div() {
    final int? operand1 = int.tryParse(_operand1Controller.text);
    final int? operand2 = int.tryParse(_operand2Controller.text);
    if (operand1 == null || operand2 == null) {
      setState(() {
        result = 'Invalid input';
      });
      return;
    }
    int res = operand1~/operand2;
    setState(() {
      result = '$res';
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(width: 600.0, height: 550.0, color: Colors.lightBlue,child: Column(
              children: [
                Container(width: 560.0, height: 20.0, color: Colors.lightBlue),
                Container(width: 560.0, height: 520.0, color: Colors.lightBlue, child: Column(
                  children: [
                    Container(width: 530.0, height: 200.0, color: Colors.lightBlueAccent, child: Column(
                      children: [
                        Container(width: 560.0, height: 40.0, color: Colors.lightBlueAccent),
                        const Text(style: TextStyle(fontSize: 25,color: Colors.red),'The output is:'),
                        Text(
                          '$result',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),),
                    Container(width: 560.0, height: 30.0, color: Colors.lightBlue),
                    const Text(style: TextStyle(fontSize: 25,color: Colors.red),"operations"),
                    TextField(
                      controller: _operand1Controller,
                      decoration: InputDecoration(
                        hintText: 'Operand 1',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    TextField(
                      controller: _operand2Controller,
                      decoration: InputDecoration(
                        hintText: 'Operand 2',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    Container(width: 560.0, height: 40.0, color: Colors.lightBlue),
                    Container(width: 530.0, height: 100.0, color: Colors.lightBlueAccent, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: add,style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FF00)),child: Icon(Icons.add)),
                        SizedBox(width: 10),
                        ElevatedButton(onPressed: sub,style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FF00)),child: Icon(Icons.remove)),
                        SizedBox(width: 10),
                        ElevatedButton(onPressed: mul,style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FF00)),child: Icon(Icons.clear)),
                        SizedBox(width: 10),
                        ElevatedButton(onPressed: div,style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FF00)),child: Text('/')),
                      ],
                    ),)
                  ],
                ),)
              ],
            ),)
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
