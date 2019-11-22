import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Cupertino Action Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CupertinoActionSheetDemo(),
    ));

showActionSheet(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: Text('The title Goes here'),
          message: Text('The message goes here'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('Option A'),
              onPressed: () {},
            ),
            CupertinoActionSheetAction(
              child: Text('Option B'),
              onPressed: () {},
            ),
            CupertinoActionSheetAction(
              child: Text('Option C'),
              onPressed: () {},
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {},
          ),
        );
      });
}

class CupertinoActionSheetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CupertinoButton(
          child: Text('Show Action Sheet'),
          onPressed: () {
            showActionSheet(context);
          },
        ),
      ),
    );
  }
}
