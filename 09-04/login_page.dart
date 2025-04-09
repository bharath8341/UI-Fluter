import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Login or Signin page'),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(width: 410.0, height: 330.0, color: Colors.lightBlue,child: Column(
              children: [
                Container(width: 100, height: 30, color: Colors.lightBlue,),
                Container(width: 350.0, height: 290.0, color: Colors.lightBlue,
                    child: Column(
                      children: [
                        const Text(style: TextStyle(fontSize: 25,color: Colors.red),"LOGIN"),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        Container(width: 100, height: 30, color: Colors.lightBlue,),
                        ElevatedButton(onPressed: _incrementCounter,style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FF00)),child: Text("Sign In"))
                      ],
                    )
                )
              ],
            ),),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
