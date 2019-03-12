import 'package:flutter/material.dart';

import '../components/bottomNav.dart';
import '../components/horizontalScroll.dart';
import '../components/quiz.dart';
import './lection_details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Početna'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.00, horizontal: 0.00),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.00, horizontal: 20.00),
            child:Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 10.00),
                  child: ClipOval(
                      child: Image.network(
                    'https://via.placeholder.com/150',
                    height: 30.00,
                    width: 30.00,
                    
                  ))),
              Text('Marko je upravo odslušao')
            ],
          )),
          GestureDetector(
            onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LectionDetails()));
                },
            child:Padding(
              padding: EdgeInsets.symmetric(vertical: 20.00, horizontal: 20.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 10.00),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://via.placeholder.com/150',
                          ))),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                    Opacity(
                        opacity: 0.6,
                        child: Text(
                          'Svijet od kraja XVII do Sredine XIX vijeka',
                        )),
                    Text(
                      'Napoleonova vladavina',
                      style: TextStyle(
                          fontSize: 20.00, fontWeight: FontWeight.bold),
                    )
                  ])),
                ],
              ))),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.00, horizontal: 20.00),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Mix Lekcija za 31.1.2019.',
                      style: TextStyle(
                          fontSize: 17.00, fontWeight: FontWeight.bold)),
                  Opacity(
                      opacity: 0.6,
                      child: Text(
                          'Lekcije posebno izabrane samo za tebe, na osnovu tvog plana i programa i rasporeda časova.'))
                ])),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.00, horizontal: 20.0),
            child:HorizontalList(false)
          ),//here you will pass data in future to render list
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.00, horizontal: 20.00),
            child: QuizOptions(),),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.00, horizontal: 20.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Šta drugi danas uče?',
                style: TextStyle(
                          fontSize: 17.00, fontWeight: FontWeight.bold)),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    'Lekcije koje su odslušali učenici iz tvoje mreže i tvog razreda danas.',
                  )),
                HorizontalList(true)
              ]
              )
          ),
      ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
