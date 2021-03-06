import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CounterModel.dart';

// https://baoflutter.com/provider-trong-flutter-quan-ly-state-trong-ung-dung/
class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      body: Center(
        child: Text(
          'Counter Value is: ${counterModel.getCounter()}',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => counterModel.incrementCounter().then((value) =>
            {
              print('increment success')
            }).catchError((e) => {
              print('Lỗi xảy ra - '+e.toString())
            }),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () => counterModel.decrementCounter(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}