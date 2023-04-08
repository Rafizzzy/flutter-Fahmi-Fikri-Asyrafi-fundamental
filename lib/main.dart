import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp()
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    int? result=0,num1=0,num2=0;
    hapus(){
      setState(() {
        result = 0;
      });
    }
    add(){
      setState(() {
        num1=int.parse(controller1.text);
        num2=int.parse(controller2.text);
        result = num1! + num2!;
      });
    }
    substract(){
      setState(() {
        num1=int.parse(controller1.text);
        num2=int.parse(controller2.text);
        result = num1! - num2!;
      });
    }
    multiply(){
      setState(() {
        num1=int.parse(controller1.text);
        num2=int.parse(controller2.text);
        result = num1! * num2!;
      });
    }
    divide(){
      setState(() {
        num1=int.parse(controller1.text);
        num2=int.parse(controller2.text);
        result = num1! ~/ num2!;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  ElevatedButton(
                  child: Text('Clear'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    hapus();
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Result :  $result" ,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                label: Text("Enter First Number"),
              ),
            ),
            TextField(
                controller: controller2,
              decoration: InputDecoration(
                label: Text("Enter Second Number"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text('ADD'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    add();
                    controller1.clear();
                    controller2.clear();
                  },
                ),
                ElevatedButton(
                  child: Text('SUBSTRACT'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    substract();
                    controller1.clear();
                    controller2.clear();

                  },
                ),
                ElevatedButton(
                  child: Text('MULTIPLY'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    multiply();
                    controller1.clear();
                    controller2.clear();
                  },
                ),
                ElevatedButton(
                  child: Text('DIVIDE'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    divide();
                    controller1.clear();
                    controller2.clear();
                  },
                ),
              ],
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

