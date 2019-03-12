import 'package:flutter/material.dart';

class QuizOptions extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
              Text('Napoleon se proglasio za doživotnog konzula:',style: TextStyle(
                          fontSize: 17.00, fontWeight: FontWeight.bold)),
                RadioListTile(
                  title: const Text('1895. god'),
                  value: '1895', //passed to onchanged
                  groupValue: true, // needs to be dynamic
                  //checked:true,
                  onChanged: (value){print(value);},
                ),
                RadioListTile(
                  title: const Text('1895. god'),
                  value: '1895', //passed to onchanged
                  groupValue: true, // needs to be dynamic
                  //checked:true,
                  onChanged: (value){print(value);},
                ),
                RadioListTile(
                  title: const Text('1895. god'),
                  value: '1895', //passed to onchanged
                  groupValue: true, // needs to be dynamic
                  //checked:true,
                  onChanged: (value){print(value);},
                ),
            ],);
  }
}