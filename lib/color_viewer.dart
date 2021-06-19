import 'package:flutter/material.dart';

class ColorViewer extends StatelessWidget {
  const ColorViewer({
    Key? key,
    required this.r,
    required this.g,
    required this.b,
  }) : super(key: key);

  final int r;
  final int g;
  final int b;

  @override
  Widget build(BuildContext context) {
    final newColor = Color.fromRGBO(r, g, b, 1.0);

    return Container(
      width: double.infinity,
      color: newColor,
      child: Center(
        child: Text(
          'Red: $r, Green: $g, Blue: $b\nHexcode: ${newColor.value.toRadixString(16)}',
          style: TextStyle(color: Colors.white, backgroundColor: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
