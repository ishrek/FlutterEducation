import 'package:flutter/cupertino.dart';
/*
* Demo dart aysn
* https://buihainam.com/dart/dart_async_intro/
* */
class CounterModel with ChangeNotifier {
  int _counter = 0;
  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  Future<void> incrementCounter() async {
    await Future.delayed(Duration(seconds: 1));
    // throw new Exception('lol');
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}