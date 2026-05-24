import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Mi app de flutter",
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Título'),
        ),
        body: Center(
          child: Text('Esto es un textooo.', textDirection: TextDirection.ltr,),
        ),
      )
    )
  );
}
