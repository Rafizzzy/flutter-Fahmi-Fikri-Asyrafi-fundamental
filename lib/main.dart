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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
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
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Result :",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Enter First Number"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Enter Second Number"),
              ),
            ),

            ElevatedButton(

              child: Text('ADD'),
              style: ElevatedButton.styleFrom(
              primary: Colors.blue,
          ),
          onPressed: () {},
          ),          
            ElevatedButton(
              child: Text('SUBSTRACT'),
              style: ElevatedButton.styleFrom(
              primary: Colors.blue,
          ),
          onPressed: () {},
          ),          
            ElevatedButton(
              child: Text('MULTIPLY'),
              style: ElevatedButton.styleFrom(
              primary: Colors.blue,
          ),
          onPressed: () {},
          ),          
            ElevatedButton(
              child: Text('DIVIDE'),
              style: ElevatedButton.styleFrom(
              primary: Colors.blue,
          ),
          onPressed: () {},
          ),          
        ],
        ),
      ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
