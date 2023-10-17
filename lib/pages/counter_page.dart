import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {



  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:',
            style: TextStyle(fontSize: 16,
            fontWeight: FontWeight.w200)),

            Text(_counter.toString(),
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),


            ElevatedButton(onPressed: _incrementCounter, child: 
            const Text('Increment Counter!')),

            ElevatedButton(onPressed: _resetCounter, child: 
            const Text("Reset the counter!",
            style: TextStyle(fontSize: 20),),)
          ],
        ),
      ),
    );
  }
}