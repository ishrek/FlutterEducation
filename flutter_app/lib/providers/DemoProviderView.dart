import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CounterModel.dart';
import 'CounterView.dart';

class DemoProviderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('DemoProviderView');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
          child: MultiProvider(
            providers: [
              ChangeNotifierProvider<CounterModel>(create: (context) => CounterModel()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: CounterView(),
            ),
          ),
      ),
    );
  }
}