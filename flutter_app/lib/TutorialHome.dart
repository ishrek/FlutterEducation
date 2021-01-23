import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;
import 'dart:async';

import 'package:flutter_app/newScreen/SecondVC.dart';

class TutorialHome extends StatefulWidget {
  TutorialHome({Key key}) : super(key: key);

  @override
  _TutorialHometState createState() => _TutorialHometState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _TutorialHometState extends State<TutorialHome> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _reduce() {
    developer.log('log me', name: 'my.app.category');
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.security),
            tooltip: 'Security',
            onPressed: _reduce,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'You have pressed the button $_count times.',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(color: Colors.blue[900]),
              child: (MyButton()),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.account_circle, size: 50)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Flutter McFlutter',
                            style: Theme.of(context).textTheme.headline),
                        Text('Experienced App Developer'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('123 Main Street'),
                    Text('415-555-0198'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        // final snackBar = SnackBar(content: Text("Tap"));
        // Scaffold.of(context).showSnackBar(snackBar);

        //Custom navigation Push
        // Navigator.push(context, PageRouteBuilder(
        //     opaque: false,
        //     pageBuilder: (BuildContext context, _, __) {
        //       return Center(child: Text('My PageRoute'));
        //     },
        //     transitionsBuilder: (___, Animation<double> animation, ____, Widget child) {
        //       return FadeTransition(
        //         opacity: animation,
        //         child: RotationTransition(
        //           turns: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
        //           child: child,
        //         ),
        //       );
        //     }
        // ));


        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondVC()),
        );

      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Text(
          'Push',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
