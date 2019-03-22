import 'package:flutter/material.dart';
import '../components/horizontalScroll.dart';
import '../components/slider.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Biologija'),
        centerTitle: true 
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child:ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(child:HorizontalList(false),padding:EdgeInsets.only(bottom: 35.0)),
          Center(
            child:Column(
              children:<Widget>[
                Text('Gradja Celije',style: TextStyle(fontWeight: FontWeight.bold),),
                Opacity(child: Text('celija'),opacity: 0.5)
              ]
          )),
          PlayerSlider(),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.replay_10),
                Icon(Icons.skip_previous),
                Icon(Icons.play_circle_filled, size:50.0),
                Icon(Icons.skip_next),
                Icon(Icons.forward_10)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
              children:<Widget>[
                Icon(Icons.more_horiz),
                Text('1x')
              ]),
              Icon(Icons.bookmark_border),
              Icon(Icons.add),
            ],
          ))
        ],
      ),
    ));
  }
}