import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Cupertino Action Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CupertinoSliderDemo(),
    ));

class CupertinoSliderDemo extends StatefulWidget {
  @override
  _CupertinoSliderDemoState createState() => _CupertinoSliderDemoState();
}

class _CupertinoSliderDemoState extends State<CupertinoSliderDemo> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoSlider(
            value: sliderValue,
            min: 0,
            max: 10,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          Text(sliderValue.round().toString()),
        ],
      ),
    );
  }
}
