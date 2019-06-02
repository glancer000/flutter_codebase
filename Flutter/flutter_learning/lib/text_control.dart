import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlManager();
  }
}

class _TextControlManager extends State<TextControl>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text('Change Text'),
        onPressed: () {
          setState(() {
            _text = 'This changed';
          });
        });
  }
}