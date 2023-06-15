import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

    var dateFormat = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("yMMMMd : ${DateFormat('yMMMMd').format(dateFormat)}"),
              Text("yMMMMEEEEd : ${DateFormat('yMMMMEEEEd').format(dateFormat)}"),
              Text("Hms : ${DateFormat('Hms').format(dateFormat)}"),
              Text("jms : ${DateFormat('jms').format(dateFormat)}"),
              Text("MMMMEEEEd : ${DateFormat('MMMMEEEEd').format(dateFormat)}"),
              Text("EEEE : ${DateFormat('EEEE').format(dateFormat)}"),
              Text("MMMM : ${DateFormat('MMMM').format(dateFormat)}"),
              ElevatedButton(onPressed: (){
                setState(() {
                });
              }, child: Text("Refresh")),

            ],
          ),
        )

    );
  }
}
