import 'package:flutter/material.dart';
import 'package:flutter_app/Redux/DemoRedux.dart';
import 'package:flutter_app/Redux/reducers.dart';
import 'package:redux/redux.dart';

class ReduxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = new Store<int>(counterReducer, initialState: 0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Redux'),
      ),
      body: Center(
        child: DemoRedux(
          title: 'Redux Demo',
          store: store,
        ),
      ),
    );
  }
}