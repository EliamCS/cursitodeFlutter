import 'package:first_flutter_project/second_file.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyClass()
  );



class MyClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi app de flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Título'),
        ),
        body: SecondClass()
      )
    );
  }
  
}

//Angel Eliam Contreras Santiago