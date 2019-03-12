import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
   type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Pocetna')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Biblioteka')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Pretraga')),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), title: Text('Statistika')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Profil')),
        ],
        fixedColor: Colors.orange,
      );
  }
}