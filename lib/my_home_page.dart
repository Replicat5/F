import 'package:Lesson1/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Counter _shit = Counter();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Row(children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Text(
                'Количество кликов:',
              ),
              Observer(
                builder: (_) =>
                    Text('${_shit.counte}', style: TextStyle(fontSize: 42.0)),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RaisedButton(
              onPressed: _shit.incrementCounter,
              child: Icon(Icons.add)
              
            ),
            RaisedButton(
              onPressed: _shit.decrementCounter,
              child: Icon(Icons.remove)
              
            ),
          ],
        )
      ]),
    );
  }
}
