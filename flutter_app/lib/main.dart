// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_app/RandomWords.dart';
import 'package:flutter_app/TutorialHome.dart';
import 'package:flutter_app/nestingNavigators/MyAppNavigators.dart';
import 'MyAppBar.dart';


//https://flutter.dev/docs/get-started/codelab
void main() => runApp(MyAppNavigators());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //variable
    // final wordPair = WordPair.random();

    //Return text
    // return MaterialApp(
    //   title: 'Welcome to Flutter',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Welcome to Flutter'),
    //     ),
    //     body: Center(
    //       child: RandomWords(),
    //     ),
    //   ),
    // );

    //Return list view
    // return MaterialApp(
    //   title: 'Startup Name Generator',
    //   theme: ThemeData(
    //     // Add the 3 lines from here...
    //     primaryColor: Colors.white,
    //   ),
    //   home: RandomWords(),
    // );

    //Return Hello word
    // return MaterialApp(
    //   title: 'Welcome to Flutter',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Welcome to Flutter'),
    //     ),
    //     body: Center(
    //       child: Text(
    //         'Hello, world!',
    //         textDirection: TextDirection.ltr,
    //       ),
    //     ),
    //   ),
    // );

    //Return custom appBar
    // return MaterialApp(
    //   title: 'Arsenal.com', // used by the OS task switcher
    //   home: SafeArea(
    //     child: MyScaffold(),
    //   ),
    // );

    // Return home page
    return MaterialApp(
      title: "Home center",
      home: TutorialHome(),
    );
  }
}
