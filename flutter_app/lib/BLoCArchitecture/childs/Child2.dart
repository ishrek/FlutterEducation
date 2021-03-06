import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BlocProvider.dart';
import '../BloCModel/ColorBloc.dart';

class Child2 extends StatelessWidget {
  ColorBloc colorBloc;
  @override
  Widget build(BuildContext context) {
    colorBloc = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: Center(
            child: RaisedButton(
              child: Text("Change Color"),
              color: Colors.blue,
              onPressed: () {
                colorBloc.changeColor();
              },
            ),
          ),
        ),
        Container(
          child: Center(
            child: RaisedButton(
              child: Text("Fake action"),
              color: Colors.blue,
              onPressed: () {
                colorBloc.fakeAction();
              },
            ),
          ),
        ),
      ],
    );
  }
}