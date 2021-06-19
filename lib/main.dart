import 'package:color_picker/color.dart';
import 'package:color_picker/color_slider.dart';
import 'package:color_picker/color_viewer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ColorPicker());
}

class ColorPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double r = 0.0;
  double g = 0.0;
  double b = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ColorViewer(r: r.toInt(), g: g.toInt(), b: b.toInt()),
            ),
            ColorSlider(
              color: BaseColor.red,
              value: r,
              onChanged: (double value) {
                setState(() => r = value);
              },
            ),
            ColorSlider(
              color: BaseColor.green,
              value: g,
              onChanged: (double value) {
                setState(() => g = value);
              },
            ),
            ColorSlider(
              color: BaseColor.blue,
              value: b,
              onChanged: (double value) {
                setState(() => b = value);
              },
            )
          ],
        ),
      ),
    );
  }
}
