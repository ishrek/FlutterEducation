class NumberStream {
  int _counter = 0;
  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;
  Duration _interval = Duration(seconds: 1);

  Stream<int> intStream() {
    print('intStream');
    return Stream<int>.periodic(_interval, (int _counter) => _counter++);
  }

  Stream<int> stopStream() {
    print('stopStream');
    _interval =  null;
    _counter = 0;
    print(_interval);
    return Stream<int>.periodic(_interval, (int _counter) => 0);
  }
}