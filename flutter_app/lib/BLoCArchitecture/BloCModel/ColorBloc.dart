import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'dart:developer' as developer;

import '../BlocProvider.dart';

class ColorBloc extends BlocBase {
  // tạo ra Stream của các thuộc tính trong Widget, chúng sẽ thay đổi trong run time thông qua StreamController
  StreamController streamListController = StreamController<Color>.broadcast();
// sink
  Sink get colorSink => streamListController.sink;
// stream
  Stream<Color> get colorStream => streamListController.stream;

// function to change the color
  changeColor() {
    colorSink.add(getRandomColor());
  }

  fakeAction() {
    login();
  }

  //disponsing our Stream
  @override
  dispose() {
    developer.log('streamListController', name: 'my.app.category');
    streamListController.close();
  }

  @override
  void login() {
    developer.log('login', name: 'my.app.category');
  }
}

// Random Colour generator
Color getRandomColor() {
  Random _random = Random();
  return Color.fromARGB(
      255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));
}