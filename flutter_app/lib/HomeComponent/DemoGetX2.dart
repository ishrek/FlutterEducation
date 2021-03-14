import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX2/getX2_main.dart';

class PushToGetX2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => getX2_main(),
          ),
        );
      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.green,
        ),
        child: Text(
          'GetX 2',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}