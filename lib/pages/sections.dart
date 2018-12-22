import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  final Widget child;
  final double widthFull;

  Sections({this.child, this.widthFull});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: (widthFull - 30.0) / 2.0,
          height: 220.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: child,
        ),
      ),
    );
  }
}
