import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final bool condition;
  CardText(this.condition);
  @override
  Widget build(BuildContext context) {
    return condition ? Row(
                  children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(top:2.0,right: 10.00),
                  child:ClipOval(
                    child: Image.network(
                    'https://via.placeholder.com/150',
                    height: 30.00,
                    width: 30.00,
                  ))),
                  Text('Marko Markovic',
                  style: TextStyle(
                          fontSize: 15.00, fontWeight: FontWeight.bold))
                  ],
                ) : Text('Uglovodonici, Kalkovi, Zakljucci, Napo...');
  }
}