
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Bloc/CounterBloc.dart';
import 'package:flutter_app/Bloc/DataEvent.dart';
import 'package:flutter_app/Bloc/DataState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// https://viblo.asia/p/flutter-quan-ly-trang-thai-cua-widget-RQqKLEGMZ7z
/*
* Demo Bloc
* */
class SecondVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, DataState>(
              builder: (context, state) {
                if (state is Success) {
                  return Text(
                    '${state.count}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else {
                  return new CircularProgressIndicator();
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back to home'),
            ),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(Decrement());
              },
              child: Text('-'),
            ),
          ],
        ),

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterBloc.add(Increment()),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          // FloatingActionButton(
          //   onPressed: () => counterBloc.add(Decrement()),
          //   tooltip: 'Decrement',
          //   child: Icon(Icons.remove),
          // ),
          // SizedBox(width: 30),

        ],
      ),
    );
  }
}