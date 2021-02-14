import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'actions.dart';
import 'package:redux/redux.dart';

/*
* https://baoflutter.com/nghe-thuat-flutter-quan-ly-state-voi-redux/
* demo redux
*
* */
class DemoRedux extends StatelessWidget {
  final Store<int> store;
  final String title;

  DemoRedux({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Kết nối Store với App thông qua StoreProvider
    return new StoreProvider<int>(
      store: store,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData.dark(),
        title: title,
        home: new Scaffold(
          // appBar: new AppBar(
          //   title: new Text(title),
          // ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  'You have pushed the button this many times:',
                ),
                // StoreConnector - là một interface với App để hiển thị hoặc tương tác
                new StoreConnector<int, String>(
                  converter: (store) => store.state.toString(),
                  builder: (context, count) {
                    return new Text(
                      count,
                      style: Theme.of(context).textTheme.display1,
                    );
                  },
                )
              ],
            ),
          ),
          // StoreConnector - là một interface với App để tương tác
          floatingActionButton: new StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(actions.ReduxIncrement);
            },
            builder: (context, callback) {
              return new FloatingActionButton(
                onPressed: callback,
                tooltip: 'Increment',
                child: new Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}