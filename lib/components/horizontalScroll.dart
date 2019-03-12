import 'package:flutter/material.dart';
import './horizontal_scroll_footer.dart';

class HorizontalList extends StatelessWidget {
  final bool condition;
  HorizontalList(this.condition);
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 240.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              width: 190.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Card(
                    color: Colors.white,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://via.placeholder.com/300',
                          //fit: BoxFit.cover,
                        ))),
                Text('Some text here',
                style: TextStyle(
                fontSize: 15.00, fontWeight: FontWeight.bold)),
                CardText(condition)     
              ])),
        ],
      ),
    );
  }
}
