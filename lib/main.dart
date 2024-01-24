

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImgNum =1;
  int rightImgNum =1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: TextButton( onPressed: () { setState((){leftImgNum=Random().nextInt(6).toInt()+1;},);  },child: Image.asset("images/dice${leftImgNum.toString()}.png"),),
          ),
          Expanded(flex:1,child: Container(height: MediaQuery.of(context).size.height,),),
          Expanded(
            flex: 3,
            child: TextButton( onPressed: () { setState((){rightImgNum=Random().nextInt(6).toInt()+1;  },);},child: Image.asset("images/dice${rightImgNum.toString()}.png",),),
          ),
        ],
      ),
    );
  }
}

