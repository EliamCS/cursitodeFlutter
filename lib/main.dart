import 'package:first_flutter_project/first_screen.dart';
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
          elevation: 10.0,
          title:Center(child : Text('Título')
          ),
          actions: <Widget>[
            Icon(Icons.settings)
          ],
         // bottom: PreferredSize(
           // preferredSize: Size.fromHeight(40.0),
           // child: Text('Esto es un texto para el appbar'),
          //),
        ),
        body: PrimeraClass()
      )
    );
  }
  
}

//Angel Eliam Contreras Santiago