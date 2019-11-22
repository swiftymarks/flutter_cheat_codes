import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Cupertino Action Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CuptertinoActivityIndicatorDemo(),
    ));

class CuptertinoActivityIndicatorDemo extends StatefulWidget {
  @override
  _CuptertinoActivityIndicatorDemoState createState() =>
      _CuptertinoActivityIndicatorDemoState();
}

class _CuptertinoActivityIndicatorDemoState
    extends State<CuptertinoActivityIndicatorDemo> {
  bool isVisible = false;
  bool isAnimating = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: isVisible,
              child: CupertinoActivityIndicator(
                radius: 20.0,
                animating: isAnimating,
              ),
            ),
            CupertinoButton(
              child: Text('Show Activity Indicator'),
              onPressed: () {
                setState(() {
                  isVisible = true;
                });
              },
            ),
            Visibility(
              visible: isVisible,
              child: CupertinoButton(
                child: Text('Stop Animation'),
                onPressed: () {
                  setState(() {
                    isAnimating = false;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
