import 'dart:math';

import 'package:color_picker/color.dart';
import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  const ColorSlider({
    Key? key,
    required this.color,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final BaseColor color;
  final double value;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Text(color.asFormattedString()),
        ),
        Slider(
          value: value,
          onChanged: (double value) => onChanged(value),
          activeColor: getActiveColor(color),
          min: 0,
          max: 255,
        ),
      ],
    );
  }

  Color getActiveColor(BaseColor baseColor) {
    final baseColorValue = max(150, value.toInt());
    switch (baseColor) {
      case BaseColor.red:
        return Color.fromRGBO(baseColorValue, 0, 0, 1.0);
      case BaseColor.green:
        return Color.fromRGBO(0, baseColorValue, 0, 1.0);
      case BaseColor.blue:
        return Color.fromRGBO(0, 0, baseColorValue, 1.0);
    }
  }
}
