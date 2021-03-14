import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/DemoGetX/GetXArchitecture.dart';

class PushToGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GetXArchitecture(),
          ),
        );
      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.red,
        ),
        child: Text(
          'GetX',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}