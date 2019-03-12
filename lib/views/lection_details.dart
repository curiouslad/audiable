import 'package:flutter/material.dart';
import '../components/horizontalScroll.dart';
import '../components/bottomNav.dart';

class LectionDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mix dana #2"),
        ),
        body: ListView(
          padding:
              const EdgeInsets.symmetric(vertical: 20.00, horizontal: 20.00),
          children: <Widget>[
            Center(child:Stack(
              alignment: AlignmentDirectional.center,
              overflow: Overflow.visible,
              children:<Widget>[
              ClipRRect(
               borderRadius: BorderRadius.circular(8.0),
               child:Image.network(
              'https://via.placeholder.com/200',
            )),
            
            Positioned(
              bottom: -20.0,
              child:RaisedButton(
                onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              color: Colors.orange,
              child: Text('Some text'),
            ))
            ])),
            Padding(
              padding:const EdgeInsets.symmetric(vertical: 20.00, horizontal: 0.00),
              child: Center(child: 
              Opacity(opacity:0.6,child:Text('16:55min')),
              ),),
            Text('Poglavlja u mix-u',
                style: TextStyle(fontSize: 17.00, fontWeight: FontWeight.bold)),
            HorizontalList(false),
            Padding(
              padding:const EdgeInsets.only(top:20.00),
            child:Text('Lekcije',
                style: TextStyle(fontSize: 17.00, fontWeight: FontWeight.bold))
            ),
            Padding(
              padding:const EdgeInsets.symmetric(vertical: 20.00, horizontal: 0.00),
              child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Row( 
                children:<Widget>[
                  Icon(Icons.play_circle_outline),
                  Padding(
                  padding:const EdgeInsets.only(left:10.00),
                  child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                  const Text('The seat for the narrator'),
                  const Opacity(opacity:0.5,child:Text('3:25'))
              ])),
                ]),
                
              Icon(Icons.more_vert)
              ] ,
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigation(),
        //   child: RaisedButton(
        //     onPressed: () {
        //       // Navigate back to first route when tapped.
        //     },
        //     child: Text('Go back!'),
        //   ),
        // ),
        // body: Center(
        //   child: RaisedButton(
        //     onPressed: () {
        //       // Navigate back to first route when tapped.
        //     },
        //     child: Text('Go back!'),
        //   ),
        // ),
        );
  }
}
