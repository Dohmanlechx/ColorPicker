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
    switch (baseColor) {
      case BaseColor.red:
        return Colors.red;
      case BaseColor.green:
        return Colors.green;
      case BaseColor.blue:
        return Colors.blue;
    }
  }
}
