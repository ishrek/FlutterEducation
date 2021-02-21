import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FluterProvider/NumberStream.dart';
import 'package:provider/provider.dart';

/*
* using callback : https://www.digitalocean.com/community/tutorials/flutter-widget-communication
* */
typedef StringValue = String Function(String);

class StreamProviderPage extends StatefulWidget {
  _StreamProviderPageState createState() => _StreamProviderPageState();
  StringValue callback;
  VoidCallback onCountSelected;
  StreamProviderPage(this.callback, this.onCountSelected);
}


class _StreamProviderPageState extends State<StreamProviderPage> {
  @override
  Widget build(BuildContext context) {
    var _value = Provider.of<int>(context);

    return Scaffold(
      body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('StreamProvider - Load giá trị số tăng tự động sau 1s'),
                  SizedBox(height: 150),
                  Text('${_value.toString()}',
                      style: Theme.of(context).textTheme.display1
                  )
                ],
              )
          )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => {
              widget.callback("hello"),
            },
            child: Icon(Icons.stop_circle_outlined),
          ),
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => {
              widget.onCountSelected()
            },
            child: Icon(Icons.place_outlined),
          ),
        ],
      ),
    );
  }
}