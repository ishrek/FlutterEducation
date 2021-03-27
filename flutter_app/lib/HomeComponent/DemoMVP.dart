import 'package:flutter/material.dart';
import 'package:flutter_app/mvp/views/contact_view.dart';

// https://viblo.asia/p/flutter-architecture-pattern-mvp-bWrZnPPb5xw
class DemoMVP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContactsPage(),
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
          'MVP',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}