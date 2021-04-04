import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page"),),
      body: new Text("I belongs to Second Page"),
    );
  }
}