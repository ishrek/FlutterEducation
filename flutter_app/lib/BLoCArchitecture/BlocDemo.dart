import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BlocProvider.dart';
import 'BloCModel/ColorBloc.dart';
import 'childs/Child1.dart';
import 'childs/Child2.dart';

/*
* https://viblo.asia/p/flutter-quan-ly-trang-thai-cua-widget-RQqKLEGMZ7z
* https://blog.geekyants.com/state-management-in-flutter-7df833e6f3bd
* */
class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "BLoC Architecture",
          )),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: BlocProvider(
            bloc: ColorBloc(),
            child: Column(
              children: <Widget>[
                Child1(),
                Child2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}