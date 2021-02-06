import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_pattern/counter.dart';

class MyHomePage extends StatelessWidget {
  final int _counter = 0;

  final String title;

  MyHomePage({this.title});

  void _incrementCounter(BuildContext context) {
    // listen: fale because we don't need to listen just performing an action
    Provider.of<Counter>(context, listen: false)
        .incrementCounter(); // Flutter will look for the provider of type Counter and use the method incrementCounter inside
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
