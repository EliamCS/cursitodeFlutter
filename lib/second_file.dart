import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
          color: Colors.deepPurpleAccent,
          child: Center(
          child: Text('Es lo que somos, somos ratas.', textDirection: TextDirection.ltr,),
        )
        );
  }
  
}