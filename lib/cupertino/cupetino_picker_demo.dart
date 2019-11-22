import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Cupertino Action Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CupertinoPickertDemo(),
    ));

showPicker(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Container(
          height: 400,
          child: CupertinoPicker(
            itemExtent: 30.0,
            children: <Widget>[
              Text('Option A'),
              Text('Option B'),
              Text('Option C'),
              Text('Option D'),
              Text('Option E'),
              Text('Option F'),
            ],
            onSelectedItemChanged: (int index) {
              print(index);
            },
          ),
        );
      });
}

class CupertinoPickertDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CupertinoButton(
          child: Text('Show Picker'),
          onPressed: () {
            showPicker(context);
          },
        ),
      ),
    );
  }
}
