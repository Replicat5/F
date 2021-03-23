import 'package:lesson1/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Counter shit = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Row(children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              'Количество кликов:', style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
            Observer(
              builder: (_) =>
                  Text('${shit.isCounter()}', style: TextStyle(fontSize: 42.0)),
            ),
          ],
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: shit.increment, child: Icon(Icons.add)),
              ElevatedButton(
                  onPressed: shit.decrement, child: Icon(Icons.remove)),
            ],
          ),
        )
      ]),
    );
  }
}
