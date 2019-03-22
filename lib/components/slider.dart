import 'package:flutter/material.dart';

class PlayerSlider extends StatefulWidget {
  @override
  _PlayerSliderState createState() => _PlayerSliderState();
}

class _PlayerSliderState extends State<PlayerSlider> {
  var value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0.0),
        child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Opacity(opacity: 0.5, child: Text('1:24')),
                  Expanded(child: Container()),
                  Opacity(opacity: 0.5, child: Text('3:24')),
                ],
              )),
          Slider(
            value: value,
            onChanged: (double e) => changed(e),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
          ),
        ]));
  }

  void changed(e) {
    setState(() {
      value = e;
    });
  }
}
